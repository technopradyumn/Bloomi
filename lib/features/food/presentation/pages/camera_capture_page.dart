import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraCapturePage extends StatefulWidget {
  final bool isEmbedded;
  final String? mealType;
  final bool isActive;

  const CameraCapturePage({
    super.key,
    this.isEmbedded = false,
    this.mealType,
    this.isActive = true,
  });

  @override
  State<CameraCapturePage> createState() => _CameraCapturePageState();
}

class _CameraCapturePageState extends State<CameraCapturePage>
    with WidgetsBindingObserver {
  CameraController? _cameraController;
  List<CameraDescription> _cameras = [];
  bool _isCameraInitialized = false;
  bool _isInitializing = true;
  bool _isTakingPicture = false;
  bool _isFlashOn = false;
  String? _cameraErrorMessage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (widget.isActive) {
      _initializeCamera();
    } else {
      _isInitializing = false;
    }
  }

  @override
  void didUpdateWidget(covariant CameraCapturePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive) {
        _initializeCamera();
      } else {
        _disposeCamera();
      }
    }
  }

  Future<void> _disposeCamera() async {
    final controller = _cameraController;
    _cameraController = null;
    if (mounted) {
      setState(() {
        _isCameraInitialized = false;
        _isInitializing = false;
      });
    }
    if (controller != null) {
      try {
        await controller.dispose();
      } catch (_) {}
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!widget.isActive) return;
    final CameraController? cameraController = _cameraController;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      _disposeCamera();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCamera();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cameraController?.dispose();
    super.dispose();
  }

  Future<void> _initializeCamera() async {
    if (!mounted) return;
    setState(() {
      _isInitializing = true;
      _cameraErrorMessage = null;
    });

    try {
      final status = await Permission.camera.request();
      if (status.isPermanentlyDenied || status.isDenied) {
        if (mounted) {
          setState(() {
            _isInitializing = false;
            _cameraErrorMessage =
                'Camera permission is required to scan meals in-app.';
          });
        }
        return;
      }

      _cameras = await availableCameras();
      if (_cameras.isEmpty) {
        if (mounted) {
          setState(() {
            _isInitializing = false;
            _cameraErrorMessage = 'No camera found on this device.';
          });
        }
        return;
      }

      final camera = _cameras.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.back,
        orElse: () => _cameras.first,
      );

      final controller = CameraController(
        camera,
        ResolutionPreset.high,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );

      await controller.initialize();

      if (!mounted) {
        await controller.dispose();
        return;
      }

      setState(() {
        _cameraController = controller;
        _isCameraInitialized = true;
        _isInitializing = false;
      });
    } catch (e) {
      if (mounted) {
        setState(() {
          _isInitializing = false;
          _cameraErrorMessage = 'Could not start camera: $e';
        });
      }
    }
  }

  Future<void> _toggleFlash() async {
    final controller = _cameraController;
    if (controller == null || !controller.value.isInitialized) return;

    try {
      if (_isFlashOn) {
        await controller.setFlashMode(FlashMode.off);
        if (mounted) setState(() => _isFlashOn = false);
      } else {
        await controller.setFlashMode(FlashMode.torch);
        if (mounted) setState(() => _isFlashOn = true);
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(context, message: 'Flashlight unavailable on this device');
      }
    }
  }

  Future<void> _capturePhoto() async {
    if (_isTakingPicture) return;

    final controller = _cameraController;
    if (controller == null || !controller.value.isInitialized) {
      // Fallback if camera is unavailable
      await _pickFromGallery();
      return;
    }

    try {
      setState(() => _isTakingPicture = true);
      final XFile photo = await controller.takePicture();

      if (mounted) {
        await context.push('/food/analysing', extra: {
          'imagePath': photo.path,
          'mealType': widget.mealType,
        });
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(context, message: 'Capture failed: $e');
      }
    } finally {
      if (mounted) {
        setState(() => _isTakingPicture = false);
      }
    }
  }

  Future<void> _pickFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (image != null && mounted) {
        await context.push('/food/analysing', extra: {
          'imagePath': image.path,
          'mealType': widget.mealType,
        });
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(context, message: 'Gallery unavailable: $e');
      }
    }
  }

  Widget _buildCameraFallback() {
    return Container(
      color: const Color(0xFF161616),
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!widget.isActive) ...[
              const Icon(Icons.camera_alt_rounded, size: 56, color: AppColors.mint),
              const SizedBox(height: AppSpacing.md),
              const Text(
                'AI Meal Camera Standby',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Camera activates when this tab is selected',
                style: TextStyle(color: Colors.white60, fontSize: 13),
              ),
            ] else if (_isInitializing) ...[
              const SizedBox(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(color: AppColors.mint, strokeWidth: 3),
              ),
              const SizedBox(height: AppSpacing.md),
              const Text(
                'Starting in-app camera...',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ] else ...[
              const Icon(Icons.camera_alt_outlined, size: 64, color: Colors.white30),
              const SizedBox(height: AppSpacing.md),
              Text(
                _cameraErrorMessage ?? 'Camera preview unavailable',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: AppSpacing.lg),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: _initializeCamera,
                    icon: const Icon(Icons.refresh_rounded, size: 18),
                    label: const Text('Retry Camera'),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white38),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => context.push('/settings/permissions'),
                    icon: const Icon(Icons.shield_outlined, size: 18),
                    label: const Text('Manage Permissions'),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white38),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: _pickFromGallery,
                    icon: const Icon(Icons.photo_library_rounded, size: 18),
                    label: const Text('Use Gallery'),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final content = LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          fit: StackFit.expand,
          children: [
            // 1. Live Camera Preview (or Fallback)
            if (_isCameraInitialized && _cameraController != null)
              ClipRect(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _cameraController!.value.previewSize?.height ??
                        constraints.maxWidth,
                    height: _cameraController!.value.previewSize?.width ??
                        constraints.maxHeight,
                    child: CameraPreview(_cameraController!),
                  ),
                ),
              )
            else
              _buildCameraFallback(),

            // 2. Custom Framing Guide Box ("Center Plate")
            IgnorePointer(
              child: Center(
                child: Container(
                  width: (constraints.maxWidth * 0.72).clamp(240.0, 320.0),
                  height: (constraints.maxWidth * 0.72).clamp(240.0, 320.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.mint, width: 2.5),
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 14,
                        left: 14,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.65),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.restaurant_rounded,
                                  color: AppColors.mint, size: 14),
                              SizedBox(width: 6),
                              Text(
                                'Center Plate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 3. Top Controls (Back, Title, Flash)
            Positioned(
              top: widget.isEmbedded ? 12 : 50,
              left: AppSpacing.md,
              right: AppSpacing.md,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!widget.isEmbedded)
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.white),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black54,
                      ),
                    )
                  else
                    const SizedBox(width: 44),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.auto_awesome_rounded,
                            color: AppColors.mint, size: 16),
                        SizedBox(width: 6),
                        Text(
                          'AI Meal Scan',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: _toggleFlash,
                    icon: Icon(
                      _isFlashOn
                          ? Icons.flash_on_rounded
                          : Icons.flash_off_rounded,
                      color: _isFlashOn ? AppColors.butter : Colors.white,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black54,
                    ),
                    tooltip: _isFlashOn ? 'Turn Flash OFF' : 'Turn Flash ON',
                  ),
                ],
              ),
            ),

            // 4. Bottom Controls & Guidance
            Positioned(
              bottom: widget.isEmbedded ? 16 : 36,
              left: AppSpacing.md,
              right: AppSpacing.md,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Framing tip
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.tips_and_updates_rounded,
                            color: AppColors.butter, size: 15),
                        SizedBox(width: 6),
                        Text(
                          'Top-down angle & good lighting work best',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Action Bar (Gallery, Live Shutter Button, Quick Info)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Gallery Picker
                      IconButton(
                        onPressed: _pickFromGallery,
                        icon: const Icon(Icons.photo_library_rounded,
                            color: Colors.white, size: 26),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black45,
                          padding: const EdgeInsets.all(13),
                        ),
                        tooltip: 'Choose from Gallery',
                      ),

                      // In-App Live Shutter Button
                      GestureDetector(
                        onTap: _capturePhoto,
                        child: Container(
                          width: 74,
                          height: 74,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            color: AppColors.mint,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.mint.withValues(alpha: 0.4),
                                blurRadius: 18,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: _isTakingPicture
                                ? SizedBox(
                                    width: 28,
                                    height: 28,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                      color: Theme.of(context).colorScheme.onPrimary,
                                    ),
                                  )
                                : Icon(
                                    Icons.camera_alt_rounded,
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    size: 34,
                                  ),
                          ),
                        ),
                      ),

                      // Tips Button
                      IconButton(
                        onPressed: () {
                          BloomiToast.show(
                            context,
                            message:
                                'Bloomi recognizes multiple foods on one plate: rotis, sabzi, salads & rice!',
                          );
                        },
                        icon: const Icon(Icons.info_outline_rounded,
                            color: Colors.white, size: 26),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black45,
                          padding: const EdgeInsets.all(13),
                        ),
                        tooltip: 'Scan Advice',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );

    if (widget.isEmbedded) {
      return Container(
        color: Colors.black,
        child: content,
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: content,
    );
  }
}
