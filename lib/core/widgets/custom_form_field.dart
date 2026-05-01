import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.prefix,
    this.sufix,
    required this.hint,
    this.keyboardType,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.autofillHints,
    this.controller,
    this.obscureText = false,
  });
  final Widget? prefix, sufix;
  final String hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final Iterable<String>? autofillHints;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      obscureText: obscureText,
      autofillHints: autofillHints,
      onChanged: onChanged,
      onSaved: onSaved,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        prefix: prefix,
        suffix: sufix,
        hint: Text(
          hint,
          style: AppTextStyles.w400_14.copyWith(
            color: AppColors.textfieldHintGrey,
          ),
        ),
        focusedBorder: _buildBorder(),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.borderColor),
      borderRadius: BorderRadius.circular(50),
    );
  }
}
