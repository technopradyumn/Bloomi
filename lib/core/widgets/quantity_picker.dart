import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class QuantityPicker extends StatefulWidget {
  const QuantityPicker({
    required this.quantity,
    required this.unit,
    required this.onQuantityChanged,
    required this.onUnitChanged,
    this.availableUnits = defaultUnits,
    this.step = 1.0,
    this.minQuantity = 0.25,
    this.maxQuantity = 5000.0,
    super.key,
  });

  static const List<String> defaultUnits = [
    'g',
    'ml',
    'katori',
    'bowl',
    'cup',
    'glass',
    'piece',
    'roti',
    'tbsp',
    'tsp',
  ];

  final double quantity;
  final String unit;
  final ValueChanged<double> onQuantityChanged;
  final ValueChanged<String> onUnitChanged;
  final List<String> availableUnits;
  final double step;
  final double minQuantity;
  final double maxQuantity;

  @override
  State<QuantityPicker> createState() => _QuantityPickerState();
}

class _QuantityPickerState extends State<QuantityPicker> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  bool _isEditing = false;

  String _formatQuantity(double q) {
    return (q % 1 == 0) ? q.toInt().toString() : q.toStringAsFixed(1);
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _formatQuantity(widget.quantity));
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _isEditing) {
        _commitText();
        if (mounted) {
          setState(() => _isEditing = false);
        }
      }
    });
  }

  @override
  void didUpdateWidget(QuantityPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.quantity != widget.quantity && !_isEditing) {
      final formatted = _formatQuantity(widget.quantity);
      if (_controller.text != formatted) {
        _controller.text = formatted;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _commitText() {
    final text = _controller.text.trim();
    final parsed = double.tryParse(text);
    if (parsed != null) {
      final clamped = parsed.clamp(widget.minQuantity, widget.maxQuantity);
      widget.onQuantityChanged(clamped);
      _controller.text = _formatQuantity(clamped);
    } else {
      _controller.text = _formatQuantity(widget.quantity);
    }
  }

  void _startEditing() {
    setState(() => _isEditing = true);
    _controller.text = _formatQuantity(widget.quantity);
    _focusNode.requestFocus();
    _controller.selection = TextSelection(
      baseOffset: 0,
      extentOffset: _controller.text.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final formattedQty = _formatQuantity(widget.quantity);
    final cardBg = context.appSurface;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;
    final isDark = context.isDarkMode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Stepper & Direct Editable Input Row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStepButton(
              context: context,
              icon: Icons.remove_rounded,
              onPressed: widget.quantity > widget.minQuantity
                  ? () {
                      if (_isEditing) {
                        _commitText();
                        setState(() => _isEditing = false);
                      }
                      final delta = (widget.unit == 'g' || widget.unit == 'ml' ? 10 : widget.step);
                      final next = widget.quantity - delta;
                      final clamped = next < widget.minQuantity ? widget.minQuantity : next;
                      widget.onQuantityChanged(clamped);
                      _controller.text = _formatQuantity(clamped);
                    }
                  : null,
            ),
            const SizedBox(width: AppSpacing.md),

            // Middle Box (Tap to input value directly)
            Material(
              color: cardBg,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              child: InkWell(
                onTap: _startEditing,
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 100),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                    boxShadow: isDark ? AppColors.darkCardShadow : AppColors.softCardShadow,
                    border: Border.all(
                      color: _isEditing ? AppColors.mint : context.appDivider,
                      width: 1.5,
                    ),
                  ),
                  child: _isEditing
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IntrinsicWidth(
                              child: TextField(
                                controller: _controller,
                                focusNode: _focusNode,
                                keyboardType: const TextInputType.numberWithOptions(
                                  decimal: true,
                                  signed: false,
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: primaryTextColor,
                                ),
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: '0',
                                ),
                                onSubmitted: (_) {
                                  _commitText();
                                  setState(() => _isEditing = false);
                                },
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.unit,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        )
                      : Text(
                          '$formattedQty ${widget.unit}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: primaryTextColor,
                          ),
                        ),
                ),
              ),
            ),

            const SizedBox(width: AppSpacing.md),
            _buildStepButton(
              context: context,
              icon: Icons.add_rounded,
              onPressed: widget.quantity < widget.maxQuantity
                  ? () {
                      if (_isEditing) {
                        _commitText();
                        setState(() => _isEditing = false);
                      }
                      final delta = (widget.unit == 'g' || widget.unit == 'ml' ? 10 : widget.step);
                      final next = widget.quantity + delta;
                      final clamped = next > widget.maxQuantity ? widget.maxQuantity : next;
                      widget.onQuantityChanged(clamped);
                      _controller.text = _formatQuantity(clamped);
                    }
                  : null,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),

        // Unit Chips
        Text(
          'Serving unit',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: secondaryTextColor,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.availableUnits.map((u) {
              final isSelected = u.toLowerCase() == widget.unit.toLowerCase();
              final selectedBg = isDark ? AppColors.butter.withAlpha(60) : AppColors.butter;

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.xs),
                child: Material(
                  color: isSelected ? selectedBg : cardBg,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
                    side: BorderSide(
                      color: isSelected ? AppColors.butter : context.appDivider,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      if (_isEditing) {
                        _commitText();
                        setState(() => _isEditing = false);
                      }
                      widget.onUnitChanged(u);
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 48, minWidth: 48),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        child: Center(
                          child: Text(
                            u,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                              fontSize: 13,
                              color: primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildStepButton({
    required BuildContext context,
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    final isDark = context.isDarkMode;
    final btnBg = onPressed != null
        ? (isDark ? AppColors.sky.withAlpha(60) : AppColors.sky)
        : (isDark ? context.appInk.withAlpha(25) : context.appDivider);
    final iconColor = onPressed != null ? context.appInk : context.appSlate;

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
      child: Material(
        color: btnBg,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              icon,
              size: 24,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
