import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.onChanged
  });
  final String hintText;
  final Function(String?) validator;
  final  void Function(String) onChanged;
  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      textInputAction: TextInputAction.next,
      validator: (value) => widget.validator(value),
      obscureText: _isObscured,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            _isObscured = !_isObscured;
            setState(() {});
          },
          icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
        ),
        hint: Text(widget.hintText, style: Styles.fontSize12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
