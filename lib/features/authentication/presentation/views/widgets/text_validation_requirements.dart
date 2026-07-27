import 'package:animooo/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextValidationRequirements extends StatelessWidget {
  const TextValidationRequirements({
    super.key,
    required this.text,
    required this.checker,
  });
  final String text;
  final bool checker;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.fontSize10.copyWith(
        fontWeight: FontWeight.w600,
        color: checker ? Color(0xff08A43A) : Color(0xffFC1B1A),
      ),
      softWrap: true,
    );
  }
}

