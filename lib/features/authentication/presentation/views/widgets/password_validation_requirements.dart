import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_cubit.dart';
import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_state.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/row_validation_requirements.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/text_validation_requirements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordValidationRequirements extends StatelessWidget {
  const PasswordValidationRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordValidationRequirementsCubit, PasswordValidationRequirementsState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8),
            TextValidationRequirements(
              checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).allDone,
              text:
                  'Please add all necessary characters to create safe password.',
            ),
            SizedBox(height: 16),
            RowValidationRequirements(
              checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).minChar,
              text: 'Minimum characters 12.',
            ),
            SizedBox(height: 8),
            RowValidationRequirements(
              checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).uppercaseChar,
              text: 'One uppercase character.',
            ),
            SizedBox(height: 8),
            RowValidationRequirements(
              checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).lowercaseChar,
              text: 'One lowercase character.',
            ),
            SizedBox(height: 8),
            RowValidationRequirements(
              checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).specialChar,
              text: 'One special character.',
            ),
            SizedBox(height: 8),
            RowValidationRequirements(checker: BlocProvider.of<PasswordValidationRequirementsCubit>(context).number, text: 'One number.'),
          ],
        );
      },
    );
  }
}
