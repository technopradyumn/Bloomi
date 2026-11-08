import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StepTargetSheet extends StatefulWidget {
  final int currentTarget;
  final Future<void> Function(int newTarget) onTargetSaved;

  const StepTargetSheet({
    super.key,
    required this.currentTarget,
    required this.onTargetSaved,
  });

  @override
  State<StepTargetSheet> createState() => _StepTargetSheetState();
}

class _StepTargetSheetState extends State<StepTargetSheet> {
  late final TextEditingController _controller;
  late int _selectedTarget;
  bool _isSaving = false;
  String? _errorText;

  static const List<int> _presetTargets = [5000, 8000, 10000, 12000, 15000];

  @override
  void initState() {
    super.initState();
    _selectedTarget = widget.currentTarget > 0 ? widget.currentTarget : 10000;
    _controller = TextEditingController(text: _selectedTarget.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPresetSelected(int target) {
    HapticFeedback.lightImpact();
    setState(() {
      _selectedTarget = target;
      _controller.text = target.toString();
      _errorText = null;
    });
  }

  void _adjust(int delta) {
    HapticFeedback.selectionClick();
    final current = int.tryParse(_controller.text) ?? _selectedTarget;
    final updated = (current + delta).clamp(1000, 50000);
    setState(() {
      _selectedTarget = updated;
      _controller.text = updated.toString();
      _errorText = null;
    });
  }

  Future<void> _save() async {
    final val = int.tryParse(_controller.text);
    if (val == null || val < 1000) {
      setState(() => _errorText = 'Please enter a target of at least 1,000 steps.');
      return;
    }
    if (val > 50000) {
      setState(() => _errorText = 'Daily step target cannot exceed 50,000 steps.');
      return;
    }

    setState(() {
      _isSaving = true;
      _errorText = null;
    });

    try {
      await widget.onTargetSaved(val);
      if (mounted) {
        BloomiToast.show(context, message: 'Step target updated to $val steps! 🎯');
        Navigator.of(context).pop(val);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isSaving = false;
          _errorText = 'Failed to save target. Please try again.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Container(
        decoration: BoxDecoration(
          color: context.appSurface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.lg,
          AppSpacing.md,
          AppSpacing.lg,
          AppSpacing.lg,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.appSlate.withAlpha(60),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(120),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.directions_walk_rounded,
                    color: context.appInk,
                    size: 24,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Step Target',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: context.appInk,
                        ),
                      ),
                      Text(
                        'Change your target anytime to match your routine',
                        style: TextStyle(
                          fontSize: 12,
                          color: context.appSlate,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close_rounded, color: context.appSlate),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),

            // Stepper and input field
            Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: context.appBackground,
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                border: Border.all(color: context.appBorderColor),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline_rounded),
                    color: context.appSlate,
                    onPressed: () => _adjust(-500),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                        color: context.appInk,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixText: 'steps/day',
                        suffixStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: context.appSlate,
                        ),
                      ),
                      onChanged: (text) {
                        final val = int.tryParse(text);
                        if (val != null) {
                          setState(() {
                            _selectedTarget = val;
                            _errorText = null;
                          });
                        }
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    color: AppColors.mint,
                    onPressed: () => _adjust(500),
                  ),
                ],
              ),
            ),

            if (_errorText != null) ...[
              const SizedBox(height: 6),
              Text(
                _errorText!,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.error,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],

            const SizedBox(height: AppSpacing.md),

            // Quick preset chips
            Text(
              'Quick Presets',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: context.appInk,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _presetTargets.map((target) {
                final isSelected = target == _selectedTarget;
                return ChoiceChip(
                  label: Text('${_formatPreset(target)} steps'),
                  selected: isSelected,
                  selectedColor: AppColors.mint,
                  backgroundColor: context.appBackground,
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                    color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appInk,
                  ),
                  onSelected: (_) => _onPresetSelected(target),
                );
              }).toList(),
            ),

            const SizedBox(height: AppSpacing.lg),

            // Save button
            SizedBox(
              width: double.infinity,
              child: PillButton(
                label: 'Save Target',
                isLoading: _isSaving,
                icon: Icons.check_circle_rounded,
                variant: PillButtonVariant.primary,
                onPressed: _save,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

  String _formatPreset(int n) {
    if (n >= 1000) {
      return '${n ~/ 1000}k';
    }
    return n.toString();
  }
}

Future<int?> showStepTargetModal(
  BuildContext context, {
  required int currentTarget,
  required Future<void> Function(int newTarget) onTargetSaved,
}) {
  return showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (ctx) => StepTargetSheet(
      currentTarget: currentTarget,
      onTargetSaved: onTargetSaved,
    ),
  );
}
