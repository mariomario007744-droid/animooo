import 'package:animooo/features/authentication/presentation/views/widgets/row_validation_requirements.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/text_validation_requirements.dart';
import 'package:flutter/material.dart';

class PasswordValidationRequirements extends StatelessWidget {
  const PasswordValidationRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 8),
        TextValidationRequirements(
          checker: false,
          text: 'Please add all necessary characters to create safe password.',
        ),
        SizedBox(height: 16),
        RowValidationRequirements(checker: true, text: 'Minimum characters 12.'),
        SizedBox(height: 8),
        RowValidationRequirements(checker: false, text: 'One uppercase character.'),
        SizedBox(height: 8),
        RowValidationRequirements(checker: true, text: 'One lowercase character.'),
        SizedBox(height: 8),
        RowValidationRequirements(checker: true, text: 'One special character.'),
        SizedBox(height: 8),
        RowValidationRequirements(checker: false,text: 'One number.',),
      ],
    );
  }
}

