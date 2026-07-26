import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText,required this.validator,});
  final String hintText;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        hint: Text(hintText, style: Styles.fontSize12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}