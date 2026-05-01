import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/image_picker.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/core/utils/validators.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_header.dart';
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            AuthHeader(
              logoHeight: 200,
              title: S.of(context).uploadYourInformation,
            ),
            const SizedBox(height: 20),

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

            /// 🚙 Type
            Field(
              controller: vehicleTypeController,
              hint: S.of(context).vehicleType,
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
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: imagePath == null
                    ? Center(child: Text(S.of(context).pickImage))
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(File(imagePath!), fit: BoxFit.cover),
                      ),
              ),
            ),

            const SizedBox(height: 24),

            /// 🚀 Upload Button
            CustomElevatedButton(
              title: S.of(context).uploadDocuments,
              onPressed: () {
                final isValid = _formKey.currentState?.validate() ?? false;

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

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
