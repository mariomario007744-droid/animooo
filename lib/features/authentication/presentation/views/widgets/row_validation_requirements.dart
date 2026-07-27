import 'package:animooo/features/authentication/presentation/views/widgets/custom_circle_icon.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/text_validation_requirements.dart';
import 'package:flutter/material.dart';

class RowValidationRequirements extends StatelessWidget {
  const RowValidationRequirements({super.key, required this.checker,required this.text});
  final String text;
  final bool checker;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleIcon(checker: checker),
        SizedBox(width: 4),
        Expanded(
          child: TextValidationRequirements(checker: checker, text: text),
        ),
      ],
    );
  }
}
