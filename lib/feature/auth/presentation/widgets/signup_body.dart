import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/image_picker.dart';
import 'package:mashena_driver_app/core/utils/validators.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/fields.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_footer.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String? imagePath;
  final imageService = getIt<ImagePickerService>();

  Future<void> _pickImage(ImageSource source) async {
    final path = await imageService.pickImage(source: source);
    if (path != null) {
      setState(() {
        imagePath = path;
      });
    }
  }

  void _showImageSourcePicker() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: isDark ? Colors.grey[700] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.camera_alt_rounded,
                    color: AppColors.primaryColor,
                  ),
                  title: Text(
                    S.of(context).authSignUp.contains('تسجيل')
                        ? 'الكاميرا'
                        : 'Camera',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.camera);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.photo_library_rounded,
                    color: AppColors.primaryColor,
                  ),
                  title: Text(
                    S.of(context).authSignUp.contains('تسجيل')
                        ? 'المعرض'
                        : 'Gallery',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.gallery);
                  },
                ),
                if (imagePath != null)
                  ListTile(
                    leading: const Icon(
                      Icons.delete_outline_rounded,
                      color: AppColors.danger,
                    ),
                    title: Text(
                      S.of(context).authSignUp.contains('تسجيل')
                          ? 'حذف الصورة'
                          : 'Remove Photo',
                      style: const TextStyle(color: AppColors.danger),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        imagePath = null;
                      });
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.05),
            Text(
              S.of(context).authSignUp,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // AuthHeader(
            //   title: S.of(context).authSignUp,
            //   logoHeight: context.screenHeight * 0.15,
            // ),
            const SizedBox(height: 16),

            /// Optional Profile Image Circle Avatar
            GestureDetector(
              onTap: _showImageSourcePicker,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 46,
                    backgroundColor: AppColors.primaryColor.withValues(
                      alpha: 0.1,
                    ),
                    backgroundImage: imagePath != null
                        ? FileImage(File(imagePath!))
                        : null,
                    child: imagePath == null
                        ? const Icon(
                            Icons.person_rounded,
                            size: 48,
                            color: AppColors.primaryColor,
                          )
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        imagePath == null
                            ? Icons.camera_alt_rounded
                            : Icons.edit_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).authFullName,
              autofillHints: const [AutofillHints.name],
              keyboardType: TextInputType.name,
              controller: fullNameController,
              validator: Validators.requiredField,
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).email,
              autofillHints: const [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              validator: (value) => Validators.emailField(value),
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).authPhone,
              autofillHints: const [AutofillHints.telephoneNumber],
              keyboardType: TextInputType.number,
              controller: phoneController,
              validator: Validators.phoneField,
            ),
            const SizedBox(height: 20),
            Field(
              obscureText: true,
              hint: S.of(context).authPassword,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              validator: Validators.passwordField,
            ),
            const SizedBox(height: 20),
            Field(
              obscureText: true,
              hint: S.of(context).confirmPassword,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.visiblePassword,
              controller: confirmPasswordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).validationRequired;
                }
                if (value != passwordController.text) {
                  return S.of(context).validationPasswordsNotMatch;
                }
                return null;
              },
            ),
           
            const SizedBox(height: 20),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
                return SizedBox(
                  width: context.screenWidth * 0.8,
                  child: CustomElevatedButton(
                    title: S.of(context).authSignUp,
                    isLoading: isLoading,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final params = CreateDriverParams(
                          fullName: fullNameController.text,
                          email: emailController.text,
                          phoneNumber: phoneController.text,
                          password: passwordController.text,
                          file: imagePath,
                          city: '',
                        );
                        await context.read<SignupCubit>().signup(params);
                      }
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
            AuthFooter(
              onTapLogin: () => context.go(AppRoutes.loginPath),
              text: S.of(context).authLogin,
            ),
          ],
        ),
      ),
    );
  }
}
