import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleLoginAndSignUpView extends StatelessWidget {
  const TitleLoginAndSignUpView({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Styles.fontSize38);
  }
}
