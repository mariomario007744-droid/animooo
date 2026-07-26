import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFieldLabelText extends StatelessWidget {
  const CustomFieldLabelText({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Styles.fontSize16);
  }
}