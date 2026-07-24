import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/doc_field.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/photo_picker.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/section_header.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/submit_footer.dart';

// ─── Documents View ───────────────────────────────────────────────────────────
class DocumentsView extends StatefulWidget {
  const DocumentsView({super.key});

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _nationalIdController = TextEditingController();
  final _licenseController = TextEditingController();
  final _mechanicCardController = TextEditingController();
  final _vehiclePlateController = TextEditingController();
  final _insuranceController = TextEditingController();
  final _vehicleTypeController = TextEditingController();
  final _vehicleModelController = TextEditingController();
  final _vehicleColorController = TextEditingController();
  final _vehicleYearController = TextEditingController();

  String? _imagePath;
  bool _isDirty = false;

  @override
  void initState() {
    super.initState();
    final controllers = [
      _nationalIdController,
      _licenseController,
      _mechanicCardController,
      _vehiclePlateController,
      _insuranceController,
      _vehicleTypeController,
      _vehicleModelController,
      _vehicleColorController,
      _vehicleYearController,
    ];
    for (final c in controllers) {
      c.addListener(_checkDirty);
    }
  }

  void _checkDirty() {
    final dirty =
        _nationalIdController.text.isNotEmpty ||
        _licenseController.text.isNotEmpty ||
        _vehiclePlateController.text.isNotEmpty ||
        _imagePath != null;
    if (dirty != _isDirty) setState(() => _isDirty = dirty);
  }

  @override
  void dispose() {
    _nationalIdController.dispose();
    _licenseController.dispose();
    _mechanicCardController.dispose();
    _vehiclePlateController.dispose();
    _insuranceController.dispose();
    _vehicleTypeController.dispose();
    _vehicleModelController.dispose();
    _vehicleColorController.dispose();
    _vehicleYearController.dispose();
    super.dispose();
  }

  void _pickImage() {
    // In real app: use ImagePickerService from getIt
    setState(() {
      _imagePath = 'picked';
      _isDirty = true;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_imagePath == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please upload your vehicle photo')),
        );
        return;
      }
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
          'My Documents',
          style: AppTextStyles.w600_18.copyWith(color: AppColors.onSurface),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ── Scrollable Form ────────────────────────────────────────
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.md.h,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Required docs section ──────────────────────
                    SectionHeader(
                      icon: Icons.badge_outlined,
                      title: 'Identity & License',
                      color: AppColors.primaryColor,
                      surface: AppColors.primarySurface,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    DocField(
                      controller: _nationalIdController,
                      label: 'National ID Number',
                      hint: 'e.g. 29901234567890',
                      icon: Icons.credit_card_outlined,
                      keyboardType: TextInputType.number,
                      isRequired: true,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    DocField(
                      controller: _licenseController,
                      label: 'Driver License Number',
                      hint: 'e.g. DL-2023-XXXXX',
                      icon: Icons.drive_eta_outlined,
                      isRequired: true,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    DocField(
                      controller: _mechanicCardController,
                      label: 'Mechanic Card Number',
                      hint: 'Optional',
                      icon: Icons.build_outlined,
                    ),

                    SizedBox(height: AppSpacing.lg.h),

                    // ── Vehicle section ────────────────────────────
                    SectionHeader(
                      icon: Icons.directions_car_outlined,
                      title: 'Vehicle Information',
                      color: AppColors.earning,
                      surface: AppColors.earningSurface,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    DocField(
                      controller: _vehiclePlateController,
                      label: 'Vehicle Plate Number',
                      hint: 'e.g. ABC 1234',
                      icon: Icons.confirmation_number_outlined,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    DocField(
                      controller: _insuranceController,
                      label: 'Insurance Policy Number',
                      hint: 'e.g. INS-2024-XXXXX',
                      icon: Icons.shield_outlined,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    Row(
                      children: [
                        Expanded(
                          child: DocField(
                            controller: _vehicleTypeController,
                            label: 'Vehicle Type',
                            hint: 'e.g. Sedan',
                            icon: Icons.category_outlined,
                          ),
                        ),
                        SizedBox(width: AppSpacing.sm.w),
                        Expanded(
                          child: DocField(
                            controller: _vehicleModelController,
                            label: 'Vehicle Model',
                            hint: 'e.g. Camry',
                            icon: Icons.time_to_leave_outlined,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    Row(
                      children: [
                        Expanded(
                          child: DocField(
                            controller: _vehicleColorController,
                            label: 'Vehicle Color',
                            hint: 'e.g. White',
                            icon: Icons.palette_outlined,
                          ),
                        ),
                        SizedBox(width: AppSpacing.sm.w),
                        Expanded(
                          child: DocField(
                            controller: _vehicleYearController,
                            label: 'Vehicle Year',
                            hint: 'e.g. 2022',
                            icon: Icons.calendar_today_outlined,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: AppSpacing.lg.h),

                    // ── Photo upload ───────────────────────────────
                    SectionHeader(
                      icon: Icons.photo_camera_outlined,
                      title: 'Vehicle Photo',
                      color: AppColors.info,
                      surface: AppColors.infoSurface,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    PhotoPicker(imagePath: _imagePath, onPickImage: _pickImage),
                    SizedBox(height: AppSpacing.xxl.h),
                  ],
                ),
              ),
            ),
          ),

          // ── Footer Submit Button ───────────────────────────────────
          SubmitFooter(isActive: _isDirty, onSubmit: _submit),
        ],
      ),
    );
  }
}
