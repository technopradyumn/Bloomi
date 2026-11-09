import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_cupertino_picker.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ManualBodyValuesPage extends StatefulWidget {
  final String? initialCategory;
  final BodyEntry? existingEntry;

  const ManualBodyValuesPage({
    super.key,
    this.initialCategory,
    this.existingEntry,
  });

  @override
  State<ManualBodyValuesPage> createState() => _ManualBodyValuesPageState();
}

class _ManualBodyValuesPageState extends State<ManualBodyValuesPage> {
  String _selectedCategory = 'weight'; // 'weight', 'bp', 'sugar', 'temp', 'circumference'
  DateTime _measuredAt = DateTime.now();

  // Controllers - initialize empty so no fake or misleading hardcoded values show up
  final _weightCtrl = TextEditingController();
  final _systolicCtrl = TextEditingController();
  final _diastolicCtrl = TextEditingController();
  final _sugarCtrl = TextEditingController();
  final _tempCtrl = TextEditingController();
  final _waistCtrl = TextEditingController();
  final _hipCtrl = TextEditingController();
  final _chestCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();

  String _sugarContext = 'Fasting'; // 'Fasting', 'Post-Meal', 'Random'

  @override
  void initState() {
    super.initState();
    if (widget.initialCategory != null) {
      _selectedCategory = widget.initialCategory!;
    }

    if (widget.existingEntry != null) {
      _loadFromExistingEntry(widget.existingEntry!);
    } else {
      _loadLatestValues();
    }
  }

  void _loadFromExistingEntry(BodyEntry entry) {
    _measuredAt = entry.measuredAt;
    final val = entry.value;

    switch (entry.type) {
      case 'weight':
        _selectedCategory = 'weight';
        _weightCtrl.text = _formatNumber(val);
        break;
      case 'blood_pressure_sys':
      case 'systolic_bp':
        _selectedCategory = 'bp';
        _systolicCtrl.text = val.toInt().toString();
        break;
      case 'blood_pressure_dia':
      case 'diastolic_bp':
        _selectedCategory = 'bp';
        _diastolicCtrl.text = val.toInt().toString();
        break;
      case 'blood_glucose':
        _selectedCategory = 'sugar';
        _sugarCtrl.text = val.toInt().toString();
        if (entry.source.contains('(') && entry.source.contains(')')) {
          final ctx = entry.source.split('(').last.replaceAll(')', '').trim();
          if (['Fasting', 'Post-Meal', 'Random'].contains(ctx)) {
            _sugarContext = ctx;
          }
        }
        break;
      case 'temperature':
        _selectedCategory = 'temp';
        _tempCtrl.text = val.toStringAsFixed(1);
        break;
      case 'waist':
        _selectedCategory = 'circumference';
        _waistCtrl.text = val.toInt().toString();
        break;
      case 'hip':
        _selectedCategory = 'circumference';
        _hipCtrl.text = val.toInt().toString();
        break;
      case 'chest':
        _selectedCategory = 'circumference';
        _chestCtrl.text = val.toInt().toString();
        break;
    }
  }

  Future<void> _loadLatestValues() async {
    try {
      final repo = sl<HealthRepository>();
      final latestWeight = await repo.getLatestBodyEntry('weight');
      final latestSys = await repo.getLatestBodyEntry('blood_pressure_sys') ??
          await repo.getLatestBodyEntry('systolic_bp');
      final latestDia = await repo.getLatestBodyEntry('blood_pressure_dia') ??
          await repo.getLatestBodyEntry('diastolic_bp');
      final latestSugar = await repo.getLatestBodyEntry('blood_glucose');
      final latestTemp = await repo.getLatestBodyEntry('temperature');
      final latestWaist = await repo.getLatestBodyEntry('waist');
      final latestHip = await repo.getLatestBodyEntry('hip');
      final latestChest = await repo.getLatestBodyEntry('chest');

      if (!mounted) return;
      setState(() {
        if (latestWeight != null && latestWeight.value > 0) {
          _weightCtrl.text = _formatNumber(latestWeight.value);
        }
        if (latestSys != null && latestSys.value > 0) {
          _systolicCtrl.text = latestSys.value.toInt().toString();
        }
        if (latestDia != null && latestDia.value > 0) {
          _diastolicCtrl.text = latestDia.value.toInt().toString();
        }
        if (latestSugar != null && latestSugar.value > 0) {
          _sugarCtrl.text = latestSugar.value.toInt().toString();
        }
        if (latestTemp != null && latestTemp.value > 0) {
          _tempCtrl.text = latestTemp.value.toStringAsFixed(1);
        }
        if (latestWaist != null && latestWaist.value > 0) {
          _waistCtrl.text = latestWaist.value.toInt().toString();
        }
        if (latestHip != null && latestHip.value > 0) {
          _hipCtrl.text = latestHip.value.toInt().toString();
        }
        if (latestChest != null && latestChest.value > 0) {
          _chestCtrl.text = latestChest.value.toInt().toString();
        }
      });
    } catch (_) {}
  }

  String _formatNumber(double val) {
    return val.truncateToDouble() == val ? val.toInt().toString() : val.toStringAsFixed(1);
  }

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
    final pickedDate = await BloomiCupertinoPicker.showDatePicker(
      context,
      initialDate: _measuredAt,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(minutes: 5)),
      title: 'Measurement Date',
    );
    if (pickedDate == null || !mounted) return;

    final pickedTime = await BloomiCupertinoPicker.showTimePicker(
      context,
      initialTime: TimeOfDay.fromDateTime(_measuredAt),
      title: 'Measurement Time',
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

    try {
      final existing = widget.existingEntry;
      switch (_selectedCategory) {
        case 'weight':
          final val = double.tryParse(_weightCtrl.text.trim());
          if (val == null || val <= 0) {
            BloomiToast.show(context, message: 'Please enter a valid positive weight');
            return;
          }
          if (existing != null && existing.type == 'weight') {
            await repo.updateBodyEntry(id: existing.id, value: val, unit: 'kg', measuredAt: _measuredAt);
          } else {
            await repo.logBodyEntry(type: 'weight', value: val, unit: 'kg', measuredAt: _measuredAt);
          }
          break;

        case 'bp':
          final sys = double.tryParse(_systolicCtrl.text.trim());
          final dia = double.tryParse(_diastolicCtrl.text.trim());
          if (sys == null || sys <= 0 || dia == null || dia <= 0) {
            BloomiToast.show(context, message: 'Please enter valid systolic and diastolic values');
            return;
          }
          if (existing != null && (existing.type == 'blood_pressure_sys' || existing.type == 'systolic_bp')) {
            await repo.updateBodyEntry(id: existing.id, value: sys, unit: 'mmHg', measuredAt: _measuredAt);
          } else if (existing != null && (existing.type == 'blood_pressure_dia' || existing.type == 'diastolic_bp')) {
            await repo.updateBodyEntry(id: existing.id, value: dia, unit: 'mmHg', measuredAt: _measuredAt);
          } else {
            await repo.logBodyEntry(type: 'blood_pressure_sys', value: sys, unit: 'mmHg', measuredAt: _measuredAt);
            await repo.logBodyEntry(type: 'blood_pressure_dia', value: dia, unit: 'mmHg', measuredAt: _measuredAt);
            await repo.logBodyEntry(type: 'systolic_bp', value: sys, unit: 'mmHg', measuredAt: _measuredAt);
            await repo.logBodyEntry(type: 'diastolic_bp', value: dia, unit: 'mmHg', measuredAt: _measuredAt);
          }
          break;

        case 'sugar':
          final val = double.tryParse(_sugarCtrl.text.trim());
          if (val == null || val <= 0) {
            BloomiToast.show(context, message: 'Please enter a valid blood glucose level');
            return;
          }
          if (existing != null && existing.type == 'blood_glucose') {
            await repo.updateBodyEntry(id: existing.id, value: val, unit: 'mg/dL', measuredAt: _measuredAt);
          } else {
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
          final val = double.tryParse(_tempCtrl.text.trim());
          if (val == null || val <= 0) {
            BloomiToast.show(context, message: 'Please enter a valid temperature');
            return;
          }
          if (existing != null && existing.type == 'temperature') {
            await repo.updateBodyEntry(id: existing.id, value: val, unit: '°C', measuredAt: _measuredAt);
          } else {
            await repo.logBodyEntry(type: 'temperature', value: val, unit: '°C', measuredAt: _measuredAt);
          }
          break;

        case 'circumference':
          final w = double.tryParse(_waistCtrl.text.trim());
          final h = double.tryParse(_hipCtrl.text.trim());
          final c = double.tryParse(_chestCtrl.text.trim());
          bool savedAny = false;
          if (w != null && w > 0) {
            if (existing != null && existing.type == 'waist') {
              await repo.updateBodyEntry(id: existing.id, value: w, unit: 'cm', measuredAt: _measuredAt);
            } else {
              await repo.logBodyEntry(type: 'waist', value: w, unit: 'cm', measuredAt: _measuredAt);
            }
            savedAny = true;
          }
          if (h != null && h > 0) {
            if (existing != null && existing.type == 'hip') {
              await repo.updateBodyEntry(id: existing.id, value: h, unit: 'cm', measuredAt: _measuredAt);
            } else {
              await repo.logBodyEntry(type: 'hip', value: h, unit: 'cm', measuredAt: _measuredAt);
            }
            savedAny = true;
          }
          if (c != null && c > 0) {
            if (existing != null && existing.type == 'chest') {
              await repo.updateBodyEntry(id: existing.id, value: c, unit: 'cm', measuredAt: _measuredAt);
            } else {
              await repo.logBodyEntry(type: 'chest', value: c, unit: 'cm', measuredAt: _measuredAt);
            }
            savedAny = true;
          }
          if (!savedAny) {
            if (mounted) BloomiToast.show(context, message: 'Please enter at least one valid measurement');
            return;
          }
          break;
      }

      if (mounted) {
        BloomiToast.show(context, message: 'Body measurement recorded securely! ✨');
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(context, message: 'Failed to save measurement: $e');
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
                _buildCategoryChip('weight', 'Weight', CupertinoIcons.gauge),
                const SizedBox(width: 8),
                _buildCategoryChip('bp', 'Blood Pressure', CupertinoIcons.waveform_path_ecg),
                const SizedBox(width: 8),
                _buildCategoryChip('sugar', 'Blood Glucose', CupertinoIcons.drop),
                const SizedBox(width: 8),
                _buildCategoryChip('temp', 'Temperature', CupertinoIcons.thermometer),
                const SizedBox(width: 8),
                _buildCategoryChip('circumference', 'Waist & Hips', CupertinoIcons.chart_bar),
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
            leading: Icon(CupertinoIcons.time, color: context.appInk),
            title: Text('Measurement Time', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk)),
            subtitle: Text(timeStr, style: TextStyle(color: context.appSlate, fontSize: 13)),
            trailing: Icon(
              CupertinoIcons.calendar,
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
                          decoration: const InputDecoration(labelText: 'Systolic', suffixText: 'mmHg', hintText: '120'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: _diastolicCtrl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: context.appInk),
                          decoration: const InputDecoration(labelText: 'Diastolic', suffixText: 'mmHg', hintText: '80'),
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
                    decoration: const InputDecoration(labelText: 'Waist', suffixText: 'cm', hintText: '82'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _hipCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(labelText: 'Hip', suffixText: 'cm', hintText: '98'),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _chestCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: context.appInk),
                    decoration: const InputDecoration(labelText: 'Chest', suffixText: 'cm', hintText: '96'),
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
            icon: CupertinoIcons.checkmark_circle,
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

