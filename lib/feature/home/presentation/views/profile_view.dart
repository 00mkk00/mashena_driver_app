import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/constants/app_constants.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/profile_widgets/avatar_picker.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/profile_widgets/profile_field.dart';

// ─── Profile View (Read-Only) ──────────────────────────────────────────────────
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String _initialName = '';
  String _initialEmail = '';
  String _initialPhone = '';
  String _avatarUrl = '';
  final String _initialCity = '';
  String _initials = '';

  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _cityController;

  @override
  void initState() {
    super.initState();
    _loadCachedUserData();

    _nameController = TextEditingController(text: _initialName);
    _emailController = TextEditingController(text: _initialEmail);
    _phoneController = TextEditingController(text: _initialPhone);
    _cityController = TextEditingController(text: _initialCity);
  }

  void _loadCachedUserData() {
    final userJson = getIt<LocalStorage>().getString(
      AppConstants.driverUserKey,
    );
    if (userJson != null && userJson.isNotEmpty) {
      try {
        final driver = DriverModel.fromJson(
          jsonDecode(userJson) as Map<String, dynamic>,
        );
        _initialName = driver.fullName;
        _initialEmail = driver.email;
        _initialPhone = driver.phoneNumber;
        _avatarUrl = driver.avatarUrl;

        final nameParts = driver.fullName.trim().split(RegExp(r'\s+'));
        if (nameParts.length >= 2) {
          _initials = '${nameParts[0][0]}${nameParts[1][0]}'.toUpperCase();
        } else if (nameParts.isNotEmpty && nameParts[0].isNotEmpty) {
          _initials = nameParts[0][0].toUpperCase();
        }
      } catch (_) {}
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.r,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          S.of(context).profileProfile,
          style: AppTextStyles.w700_18.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
        child: Column(
          children: [
            SizedBox(height: AppSpacing.lg.h),

            // ── Avatar ──────────────────────────────────────
            AvatarPicker(imagePath: _avatarUrl, initials: _initials),
            SizedBox(height: AppSpacing.xl.h),

            // ── Read-only Fields ────────────────────────────
            ProfileField(
              controller: _nameController,
              label: S.of(context).authFullName,
              hint: '',
              icon: Icons.person_outline_rounded,
              keyboardType: TextInputType.name,
              readOnly: true,
            ),
            SizedBox(height: AppSpacing.md.h),
            ProfileField(
              controller: _emailController,
              label: S.of(context).email,
              hint: '',
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              readOnly: true,
            ),
            SizedBox(height: AppSpacing.md.h),
            ProfileField(
              controller: _phoneController,
              label: S.of(context).authPhone,
              hint: '',
              icon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
              readOnly: true,
            ),
            SizedBox(height: AppSpacing.md.h),
            if (_initialCity.isNotEmpty) ...[
              ProfileField(
                controller: _cityController,
                label: S.of(context).profileCity,
                hint: '',
                icon: Icons.location_city_outlined,
                keyboardType: TextInputType.text,
                readOnly: true,
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
            SizedBox(height: AppSpacing.xxl.h),
          ],
        ),
      ),
    );
  }
}
