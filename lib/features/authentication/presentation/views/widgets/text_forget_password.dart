import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextForgetPassword extends StatelessWidget {
  const TextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forget Password....?',
      style: Styles.fontSize10.copyWith(
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}