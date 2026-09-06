import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/widgets/custom_form_field.dart';

class Field extends StatefulWidget {
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
    this.readOnly = false,
    this.onTap,
    this.sufix,
  });

  final String hint;
  final TextEditingController? controller;
  final List<String>? autofillHints;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? sufix;

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  void didUpdateWidget(covariant Field oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.obscureText != widget.obscureText) {
      _isObscured = widget.obscureText;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon = widget.sufix;

    if (widget.obscureText && widget.sufix == null) {
      suffixIcon = IconButton(
        icon: Icon(
          _isObscured
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: CustomFormField(
        controller: widget.controller,
        autofillHints: widget.autofillHints,
        keyboardType: widget.keyboardType,
        obscureText: _isObscured,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        sufix: suffixIcon,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onChanged: widget.onChanged,
        hint: widget.hint,
      ),
    );
  }
}
