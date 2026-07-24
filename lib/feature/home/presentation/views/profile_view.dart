import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/profile_widgets/avatar_picker.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/profile_widgets/profile_field.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/profile_widgets/save_footer.dart';

// ─── Profile View ─────────────────────────────────────────────────────────────
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _formKey = GlobalKey<FormState>();

  // Initial (unchanged) values — used to detect dirty state
  final String _initialName = 'Ahmed Hassan';
  final String _initialEmail = 'ahmed@example.com';
  final String _initialPhone = '+201012345678';
  final String _initialCity = 'Cairo';

  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _cityController;

  String? _imagePath;
  bool _isDirty = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: _initialName);
    _emailController = TextEditingController(text: _initialEmail);
    _phoneController = TextEditingController(text: _initialPhone);
    _cityController = TextEditingController(text: _initialCity);

    for (final c in [
      _nameController,
      _emailController,
      _phoneController,
      _cityController,
    ]) {
      c.addListener(_checkDirty);
    }
  }

  void _checkDirty() {
    final dirty =
        _nameController.text != _initialName ||
        _emailController.text != _initialEmail ||
        _phoneController.text != _initialPhone ||
        _cityController.text != _initialCity ||
        _imagePath != null;
    if (dirty != _isDirty) setState(() => _isDirty = dirty);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  void _pickAvatar() async {
    // In real implementation: use ImagePickerService from getIt
    // For now just mark dirty
    setState(() {
      _imagePath = 'picked';
      _isDirty = true;
    });
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Profile saved!')));
      setState(() => _isDirty = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.lightScaffold,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.r,
            color: AppColors.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'My Profile',
          style: AppTextStyles.w600_18.copyWith(color: AppColors.onSurface),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ── Scrollable content ─────────────────────────────────────
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: AppSpacing.lg.h),

                    // ── Avatar ──────────────────────────────────────
                    AvatarPicker(
                      imagePath: _imagePath,
                      initials: 'AH',
                      onPickImage: _pickAvatar,
                    ),
                    SizedBox(height: AppSpacing.xl.h),

                    // ── Fields ──────────────────────────────────────
                    ProfileField(
                      controller: _nameController,
                      label: 'Full Name',
                      hint: 'Enter your full name',
                      icon: Icons.person_outline_rounded,
                      keyboardType: TextInputType.name,
                      validator: (v) =>
                          (v == null || v.trim().isEmpty) ? 'Required' : null,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    ProfileField(
                      controller: _emailController,
                      label: 'Email',
                      hint: 'Enter your email',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) => (v == null || !v.contains('@'))
                          ? 'Invalid email'
                          : null,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    ProfileField(
                      controller: _phoneController,
                      label: 'Phone Number',
                      hint: 'Enter your phone number',
                      icon: Icons.phone_outlined,
                      keyboardType: TextInputType.phone,
                      validator: (v) =>
                          (v == null || v.trim().isEmpty) ? 'Required' : null,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    ProfileField(
                      controller: _cityController,
                      label: 'City',
                      hint: 'Enter your city',
                      icon: Icons.location_city_outlined,
                      keyboardType: TextInputType.text,
                      validator: (v) =>
                          (v == null || v.trim().isEmpty) ? 'Required' : null,
                    ),
                    SizedBox(height: AppSpacing.xxl.h),
                  ],
                ),
              ),
            ),
          ),

          // ── Footer Save Button ─────────────────────────────────────
          SaveFooter(isActive: _isDirty, onSave: _saveProfile),
        ],
      ),
    );
  }
}
