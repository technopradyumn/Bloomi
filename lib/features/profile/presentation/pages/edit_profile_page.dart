import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _nameCtrl = TextEditingController();
  final _heightCtrl = TextEditingController();
  String _selectedGender = 'Female';
  String _selectedDiet = 'Vegetarian';
  String _selectedAllergies = 'None';
  bool _isLoading = true;
  bool _isSaving = false;

  final List<String> _genderOptions = ['Female', 'Male', 'Other'];
  final List<String> _dietOptions = ['Vegetarian', 'Non-Vegetarian', 'Vegan', 'Eggetarian', 'Jain'];
  final List<String> _allergyOptions = ['None', 'Lactose / Dairy', 'Gluten', 'Peanuts / Nuts', 'Soy'];

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _heightCtrl.dispose();
    super.dispose();
  }

  Future<void> _loadProfile() async {
    final p = await sl<ProfileRepository>().getProfile();
    if (p != null) {
      String resolvedName = p.name;
      if (resolvedName.isEmpty || resolvedName == 'Friend') {
        try {
          final cachedUser = sl<AuthRepository>().getCachedUserSync();
          if (cachedUser?.displayName != null && cachedUser!.displayName.isNotEmpty) {
            resolvedName = cachedUser.displayName;
          }
        } catch (_) {}
      }
      _nameCtrl.text = resolvedName;
      _heightCtrl.text = p.heightCm != null ? p.heightCm!.round().toString() : '165';
      if (p.gender != null && _genderOptions.contains(p.gender)) {
        _selectedGender = p.gender!;
      }
      if (p.dietType != null && _dietOptions.contains(p.dietType)) {
        _selectedDiet = p.dietType!;
      }
      if (p.allergies != null && _allergyOptions.contains(p.allergies)) {
        _selectedAllergies = p.allergies!;
      }
    } else {
      String initialName = 'Bloomi Friend';
      try {
        final cachedUser = sl<AuthRepository>().getCachedUserSync();
        if (cachedUser?.displayName != null && cachedUser!.displayName.isNotEmpty) {
          initialName = cachedUser.displayName;
        }
      } catch (_) {}
      _nameCtrl.text = initialName;
      _heightCtrl.text = '165';
    }

    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _saveProfile() async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty) {
      BloomiToast.show(context, message: 'Please enter your name');
      return;
    }

    setState(() => _isSaving = true);
    final height = double.tryParse(_heightCtrl.text) ?? 165.0;

    await sl<ProfileRepository>().updateProfile(
      name: name,
      gender: _selectedGender,
      heightCm: height,
      dietType: _selectedDiet,
      allergies: _selectedAllergies,
    );

    if (mounted) {
      setState(() => _isSaving = false);
      BloomiToast.show(context, message: 'Profile updated successfully! ✨');
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: context.appBackground,
        body: const Center(child: CircularProgressIndicator(color: AppColors.mint)),
      );
    }

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Profile & Health Settings',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.md),
                children: [
                  // Basic Personal Info Header Card
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      boxShadow: context.appCardShadow,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person_pin_rounded, color: AppColors.mint, size: 22),
                            const SizedBox(width: 8),
                            Text(
                              'Quick Profile Details',
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'Display Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _nameCtrl,
                          style: TextStyle(color: context.appInk),
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                            filled: true,
                            fillColor: context.appBackground,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 12,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'Height (cm)',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _heightCtrl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: context.appInk),
                          decoration: InputDecoration(
                            hintText: 'e.g. 165',
                            suffixText: 'cm',
                            filled: true,
                            fillColor: context.appBackground,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 12,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'Gender',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: _genderOptions.map((g) {
                            final selected = _selectedGender == g;
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ChoiceChip(
                                label: Text(g),
                                selected: selected,
                                selectedColor: AppColors.mint,
                                backgroundColor: context.appSurface,
                                labelStyle: TextStyle(color: selected ? Theme.of(context).colorScheme.onPrimary : context.appInk),
                                onSelected: (val) {
                                  if (val) setState(() => _selectedGender = g);
                                },
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Diet & Allergies Card
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      boxShadow: context.appCardShadow,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.restaurant_rounded, color: AppColors.butter, size: 22),
                            const SizedBox(width: 8),
                            Text(
                              'Diet & Allergies',
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: context.appInk,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'Diet Preference',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _dietOptions.map((d) {
                            final selected = _selectedDiet == d;
                            return ChoiceChip(
                              label: Text(d),
                              selected: selected,
                              selectedColor: AppColors.butter,
                              onSelected: (val) {
                                if (val) setState(() => _selectedDiet = d);
                              },
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'Allergies & Intolerances',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _allergyOptions.map((a) {
                            final selected = _selectedAllergies == a;
                            return ChoiceChip(
                              label: Text(a),
                              selected: selected,
                              selectedColor: AppColors.peach,
                              onSelected: (val) {
                                if (val) setState(() => _selectedAllergies = a);
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // 5 Guided Calibration Steps Section
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.lilac.withAlpha(60),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.tune_rounded, size: 18, color: context.appInk),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '5 HEALTH CALIBRATION STEPS',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: context.appSlate,
                                letterSpacing: 0.6,
                              ),
                            ),
                            Text(
                              'Re-calibrate or fine-tune your personalized profile & targets',
                              style: TextStyle(fontSize: 11, color: context.appSlate),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),

                  _buildStepCard(
                    stepNumber: '1',
                    icon: Icons.person_rounded,
                    color: AppColors.sky,
                    title: 'Step 1: About You',
                    subtitle: 'Name, biological sex, age, language & personal profile',
                    onTap: () => context.push('/profile/edit-about-you'),
                  ),
                  _buildStepCard(
                    stepNumber: '2',
                    icon: Icons.monitor_weight_rounded,
                    color: AppColors.mint,
                    title: 'Step 2: Body Numbers',
                    subtitle: 'Height, current weight, target weight & live BMI',
                    onTap: () => context.push('/profile/edit-body'),
                  ),
                  _buildStepCard(
                    stepNumber: '3',
                    icon: Icons.flag_rounded,
                    color: AppColors.peach,
                    title: 'Step 3: Main Goal & Calories',
                    subtitle: 'Weight loss, maintain, gain & Mifflin-St Jeor target',
                    onTap: () => context.push('/profile/edit-goal'),
                  ),
                  _buildStepCard(
                    stepNumber: '4',
                    icon: Icons.restaurant_menu_rounded,
                    color: AppColors.butter,
                    title: 'Step 4: Lifestyle & Food Habits',
                    subtitle: 'Activity level, diet style (Veg/Non-veg) & allergies',
                    onTap: () => context.push('/profile/edit-lifestyle'),
                  ),
                  _buildStepCard(
                    stepNumber: '5',
                    icon: Icons.favorite_rounded,
                    color: AppColors.lilac,
                    title: 'Step 5: Health Connect & Permissions',
                    subtitle: 'Real-time sync for steps, sleep & vitals permissions',
                    onTap: () => context.push('/profile/edit-permissions'),
                  ),
                  const SizedBox(height: AppSpacing.md),
                ],
              ),
            ),

            // PINNED NON-SCROLLABLE BOTTOM SAVE BUTTON
            Container(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.screenSide,
                AppSpacing.sm,
                AppSpacing.screenSide,
                AppSpacing.md,
              ),
              decoration: BoxDecoration(
                color: context.appBackground,
                boxShadow: [
                  BoxShadow(
                    color: context.isDarkMode ? Colors.black.withAlpha(50) : Colors.black.withAlpha(8),
                    blurRadius: 8,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 440),
                child: PillButton(
                  label: 'Save Quick Details',
                  icon: Icons.check_rounded,
                  isLoading: _isSaving,
                  fullWidth: true,
                  height: 52,
                  onPressed: _saveProfile,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard({
    required String stepNumber,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: color.withAlpha(50), width: 1),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: color.withAlpha(60),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: context.appInk, size: 22),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: context.appSlate),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: context.appBackground,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_forward_ios_rounded, color: context.appSlate, size: 12),
        ),
        onTap: onTap,
      ),
    );
  }
}
