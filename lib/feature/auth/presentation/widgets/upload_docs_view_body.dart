import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/image_picker.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/core/utils/validators.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/fields.dart';

class UploadDocsBody extends StatefulWidget {
  const UploadDocsBody({super.key, required this.userId});
  final int userId;

  @override
  State<UploadDocsBody> createState() => _UploadDocsBodyState();
}

class _UploadDocsBodyState extends State<UploadDocsBody> {
  final nationalIdController = TextEditingController();
  final licenseController = TextEditingController();
  final mechanicCardController = TextEditingController();
  final vehiclePlateController = TextEditingController();
  final insurancePolicyController = TextEditingController();
  final vehicleTypeController = TextEditingController();
  final vehicleModelController = TextEditingController();
  final vehicleColorController = TextEditingController();
  final vehicleYearController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? imagePath;

  final imageService = getIt<ImagePickerService>();

  @override
  void dispose() {
    nationalIdController.dispose();
    licenseController.dispose();
    mechanicCardController.dispose();
    vehiclePlateController.dispose();
    insurancePolicyController.dispose();
    vehicleTypeController.dispose();
    vehicleModelController.dispose();
    vehicleColorController.dispose();
    vehicleYearController.dispose();
    super.dispose();
  }

  // ======================
  // Pick Image
  // ======================
  Future<void> _pickImage() async {
    final path = await imageService.pickImage();

    if (path != null) {
      setState(() {
        imagePath = path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),

            Text(
              S.of(context).uploadYourInformation,
              style: AppTextStyles.w600_24.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: InkWell(
                onTap: _pickImage,
                borderRadius: BorderRadius.circular(16.r),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: imagePath == null
                        ? (isDark
                              ? AppColors.surfaceVariantDark
                              : AppColors.primarySurface.withValues(alpha: 0.4))
                        : Colors.black,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: imagePath == null
                          ? AppColors.primaryColor.withValues(alpha: 0.5)
                          : Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  child: imagePath == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(14.r),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor.withValues(
                                  alpha: 0.1,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.cloud_upload_rounded,
                                size: 34.r,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              S.of(context).pickImage,
                              style: AppTextStyles.w600_14.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              S.of(context).tapToCaptureVehiclePhoto,
                              style: AppTextStyles.w400_12.copyWith(
                                color: AppColors.textGrey,
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.r),
                              child: Image.file(
                                File(imagePath!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withValues(alpha: 0.75),
                                  ],
                                  stops: const [0.4, 1.0],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 12.h,
                              left: 14.w,
                              right: 14.w,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                      vertical: 5.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.online.withValues(
                                        alpha: 0.85,
                                      ),
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle_rounded,
                                          color: Colors.white,
                                          size: 14.r,
                                        ),
                                        SizedBox(width: 4.w),
                                        Text(
                                          S.of(context).photoAttached,
                                          style: AppTextStyles.w600_12.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton.filledTonal(
                                    onPressed: _pickImage,
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.white.withValues(
                                        alpha: 0.9,
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.camera_alt_rounded,
                                      size: 18.r,
                                      color: AppColors.onSurface,
                                    ),
                                  ),
                                  SizedBox(width: 6.w),
                                  IconButton.filledTonal(
                                    onPressed: () {
                                      setState(() {
                                        imagePath = null;
                                      });
                                    },
                                    style: IconButton.styleFrom(
                                      backgroundColor: AppColors.danger
                                          .withValues(alpha: 0.9),
                                    ),
                                    icon: Icon(
                                      Icons.delete_outline_rounded,
                                      size: 18.r,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// 🪪 National ID
            Field(
              controller: nationalIdController,
              hint: S.of(context).nationalId,
              validator: Validators.requiredField,
            ),

            const SizedBox(height: 16),

            /// 🚗 Driver License
            Field(
              controller: licenseController,
              hint: S.of(context).driverLicense,
              validator: Validators.requiredField,
            ),

            const SizedBox(height: 16),

            /// 🔧 Mechanic Card
            Field(
              controller: mechanicCardController,
              hint: S.of(context).mechanicCard,
            ),

            const SizedBox(height: 16),

            /// 🚘 Plate
            Field(
              controller: vehiclePlateController,
              hint: S.of(context).vehiclePlate,
            ),

            const SizedBox(height: 16),

            /// 🛡 Insurance
            Field(
              controller: insurancePolicyController,
              hint: S.of(context).insurancePolicy,
            ),

            const SizedBox(height: 16),

            /// 🧾 Model
            Field(
              controller: vehicleModelController,
              hint: S.of(context).vehicleModel,
            ),

            const SizedBox(height: 16),

            /// 🎨 Color
            Field(
              controller: vehicleColorController,
              hint: S.of(context).vehicleColor,
            ),

            const SizedBox(height: 16),

            /// 📅 Year
            Field(
              controller: vehicleYearController,
              hint: S.of(context).vehicleYear,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            /// 📷 Image Picker

            /// 🚀 Upload Button
            BlocBuilder<UploadDocsCubit, UploadDocsState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomElevatedButton(
                    title: S.of(context).uploadDocuments,
                    isLoading: isLoading,
                    onPressed: () {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;

                      if (!isValid) return;

                      if (imagePath == null) {
                        context.showErrorToast(S.of(context).imageIsRequired);
                        return;
                      }

                      context.read<UploadDocsCubit>().upload(
                        UploadDriverDocsParams(
                          userId: widget.userId,
                          nationalIdNumber: nationalIdController.text,
                          driverLicenseNumber: licenseController.text,
                          mechanicCardNumber: mechanicCardController.text,
                          vehiclePlateNumber: vehiclePlateController.text,
                          insurancePolicyNumber: insurancePolicyController.text,
                          vehicleType: vehicleTypeController.text,
                          vehicleModel: vehicleModelController.text,
                          vehicleColor: vehicleColorController.text,
                          vehicleYear: vehicleYearController.text.isEmpty
                              ? null
                              : int.parse(vehicleYearController.text),
                          imagePath: imagePath!,
                        ),
                      );
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
