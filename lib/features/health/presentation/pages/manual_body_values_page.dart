import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ManualBodyValuesPage extends StatefulWidget {
  const ManualBodyValuesPage({super.key});

  @override
  State<ManualBodyValuesPage> createState() => _ManualBodyValuesPageState();
}

class _ManualBodyValuesPageState extends State<ManualBodyValuesPage> {
  String _selectedCategory = 'weight'; // 'weight', 'bp', 'sugar', 'temp', 'circumference'
  DateTime _measuredAt = DateTime.now();

  // Controllers
  final _weightCtrl = TextEditingController(text: '68.5');
  final _systolicCtrl = TextEditingController(text: '120');
  final _diastolicCtrl = TextEditingController(text: '80');
  final _sugarCtrl = TextEditingController(text: '95');
  final _tempCtrl = TextEditingController(text: '36.8');
  final _waistCtrl = TextEditingController(text: '82');
  final _hipCtrl = TextEditingController(text: '98');
  final _chestCtrl = TextEditingController(text: '96');
  final _notesCtrl = TextEditingController();

  String _sugarContext = 'Fasting'; // 'Fasting', 'Post-Meal', 'Random'

  @override
  void dispose() {
    _weightCtrl.dispose();
    _systolicCtrl.dispose();
    _diastolicCtrl.dispose();
    _sugarCtrl.dispose();
    _tempCtrl.dispose();
    _waistCtrl.dispose();
    _hipCtrl.dispose();
    _chestCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDateTime() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _measuredAt,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
    );
    if (pickedDate == null || !mounted) return;

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_measuredAt),
    );
    if (pickedTime == null || !mounted) return;

    setState(() {
      _measuredAt = DateTime(
        pickedDate.year,
        pickedDate.month,
        pickedDate.day,
        pickedTime.hour,
        pickedTime.minute,
      );
    });
  }

  Future<void> _saveEntry() async {
    final repo = sl<HealthRepository>();

    switch (_selectedCategory) {
      case 'weight':
        final val = double.tryParse(_weightCtrl.text);
        if (val != null && val > 0) {
          await repo.logBodyEntry(type: 'weight', value: val, unit: 'kg', measuredAt: _measuredAt);
        }
        break;

      case 'bp':
        final sys = double.tryParse(_systolicCtrl.text);
        final dia = double.tryParse(_diastolicCtrl.text);
        if (sys != null && dia != null) {
          await repo.logBodyEntry(type: 'systolic_bp', value: sys, unit: 'mmHg', measuredAt: _measuredAt);
          await repo.logBodyEntry(type: 'diastolic_bp', value: dia, unit: 'mmHg', measuredAt: _measuredAt);
        }
        break;

      case 'sugar':
        final val = double.tryParse(_sugarCtrl.text);
        if (val != null && val > 0) {
          await repo.logBodyEntry(
            type: 'blood_glucose',
            value: val,
            unit: 'mg/dL',
            measuredAt: _measuredAt,
            source: 'manual ($_sugarContext)',
          );
        }
        break;

      case 'temp':
        final val = double.tryParse(_tempCtrl.text);
        if (val != null && val > 0) {
          await repo.logBodyEntry(type: 'temperature', value: val, unit: '°C', measuredAt: _measuredAt);
        }
        break;

      case 'circumference':
        final w = double.tryParse(_waistCtrl.text);
        final h = double.tryParse(_hipCtrl.text);
        final c = double.tryParse(_chestCtrl.text);
        if (w != null && w > 0) {
          await repo.logBodyEntry(type: 'waist', value: w, unit: 'cm', measuredAt: _measuredAt);
        }
        if (h != null && h > 0) {
          await repo.logBodyEntry(type: 'hip', value: h, unit: 'cm', measuredAt: _measuredAt);
        }
        if (c != null && c > 0) {
          await repo.logBodyEntry(type: 'chest', value: c, unit: 'cm', measuredAt: _measuredAt);
        }
        break;
    }

    if (mounted) {
      BloomiToast.show(context, message: 'Body measurement recorded securely! ✨');
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final timeStr = DateFormat('MMM d, h:mm a').format(_measuredAt);

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Log Body Values',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Measurement Category Selector Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryChip('weight', 'Weight', Icons.scale_rounded),
                const SizedBox(width: 8),
                _buildCategoryChip('bp', 'Blood Pressure', Icons.speed_rounded),
                const SizedBox(width: 8),
                _buildCategoryChip('sugar', 'Blood Glucose', Icons.water_drop_outlined),
                const SizedBox(width: 8),
                _buildCategoryChip('temp', 'Temperature', Icons.thermostat_rounded),
                const SizedBox(width: 8),
                _buildCategoryChip('circumference', 'Waist & Hips', Icons.straighten_rounded),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Date & Time Picker Tile
          ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            ),
            tileColor: context.appSurface,
            leading: Icon(Icons.access_time_rounded, color: context.appInk),
            title: Text('Measurement Time', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
            subtitle: Text(timeStr, style: TextStyle(color: context.appSlate, fontSize: 13)),
            trailing: Icon(
              Icons.edit_calendar_rounded,
              color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
            ),
            onTap: _pickDateTime,
          ),
          const SizedBox(height: AppSpacing.md),

          // Dynamic Category Form
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              boxShadow: context.appCardShadow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_selectedCategory == 'weight') ...[
                  Text('Weight (kg)', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _weightCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(suffixText: 'kg', hintText: 'e.g. 68.5'),
                  ),
                ] else if (_selectedCategory == 'bp') ...[
                  Text('Blood Pressure (mmHg)', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _systolicCtrl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: context.appInk),
                          decoration: const InputDecoration(labelText: 'Systolic', suffixText: 'mmHg'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: _diastolicCtrl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: context.appInk),
                          decoration: const InputDecoration(labelText: 'Diastolic', suffixText: 'mmHg'),
                        ),
                      ),
                    ],
                  ),
                ] else if (_selectedCategory == 'sugar') ...[
                  Text('Blood Glucose (mg/dL)', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _sugarCtrl,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(suffixText: 'mg/dL', hintText: 'e.g. 95'),
                  ),
                  const SizedBox(height: 12),
                  Text('Reading Context', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: context.appInk)),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    children: ['Fasting', 'Post-Meal', 'Random'].map((ctx) {
                      final isSel = ctx == _sugarContext;
                      return ChoiceChip(
                        label: Text(ctx),
                        selected: isSel,
                        selectedColor: AppColors.sky,
                        backgroundColor: context.appSurface,
                        labelStyle: TextStyle(color: isSel ? Theme.of(context).colorScheme.onPrimary : context.appInk),
                        onSelected: (val) => setState(() => _sugarContext = ctx),
                      );
                    }).toList(),
                  ),
                ] else if (_selectedCategory == 'temp') ...[
                  Text('Body Temperature (°C)', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _tempCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(suffixText: '°C', hintText: 'e.g. 36.8'),
                  ),
                ] else if (_selectedCategory == 'circumference') ...[
                  Text('Circumference Measurements (cm)',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _waistCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(labelText: 'Waist', suffixText: 'cm'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _hipCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(labelText: 'Hip', suffixText: 'cm'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _chestCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(labelText: 'Chest', suffixText: 'cm'),
                  ),
                ],
                const SizedBox(height: AppSpacing.md),

                // Optional Notes
                Text('Notes (Optional)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: context.appInk)),
                const SizedBox(height: 6),
                TextField(
                  controller: _notesCtrl,
                  style: TextStyle(color: context.appInk),
                  decoration: const InputDecoration(
                    hintText: 'e.g. Morning reading, feeling energetic',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          PillButton(
            label: 'Save Body Measurement',
            icon: Icons.check_circle_outline_rounded,
            variant: PillButtonVariant.primary,
            onPressed: _saveEntry,
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String key, String label, IconData icon) {
    final isSelected = _selectedCategory == key;
    return ChoiceChip(
      avatar: Icon(icon, size: 16, color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appSlate),
      label: Text(label),
      selected: isSelected,
      backgroundColor: context.appSurface,
      selectedColor: AppColors.mint,
      labelStyle: TextStyle(
        fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
        fontSize: 12,
        color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appInk,
      ),
      onSelected: (val) {
        if (val) setState(() => _selectedCategory = key);
      },
    );
  }
}

