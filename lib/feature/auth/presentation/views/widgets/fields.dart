import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/widgets/custom_form_field.dart';

class Field extends StatelessWidget {
  const Field({
    super.key,
    required this.hint,
    this.controller,
    this.autofillHints,
    this.keyboardType,
    this.obscureText = false,
    this.onSaved,
    this.validator,
    this.onChanged,
  });

  final String hint;
  final TextEditingController? controller;
  final List<String>? autofillHints;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: CustomFormField(
        controller: controller,
        autofillHints: autofillHints,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        onChanged: onChanged,
        hint: hint,
      ),
    );
  }
}
