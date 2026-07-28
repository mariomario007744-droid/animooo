import 'package:animooo/features/authentication/presentation/manager/confirm_password_cubit/confirm_password_cubit.dart';
import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_cubit.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/password_validation_requirements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePasswordSection extends StatelessWidget {
  const CreatePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomFieldLabelText(text: 'Password'),
        SizedBox(height: 8),
        CustomPasswordFormField(
          hintText: 'Enter your password',
          validator: (value) {
            if (BlocProvider.of<PasswordValidationRequirementsCubit>(
                  context,
                ).allDone ==
                false) {
              return 'Invalid password';
            }
          },
          onChanged: (value) {
            BlocProvider.of<ConfirmPasswordCubit>(context).passwordText = value;
            BlocProvider.of<PasswordValidationRequirementsCubit>(
              context,
            ).validatePassword(value);
          },
        ),
        PasswordValidationRequirements(),
        SizedBox(height: 16),
        CustomFieldLabelText(text: 'Confirm Password'),
        SizedBox(height: 8),
        CustomPasswordFormField(
          hintText: 'Enter your password',
          validator: (value) {
            if (BlocProvider.of<ConfirmPasswordCubit>(context).passwordText !=
                value) {
              return 'Password confirmation does not match';
            }
          },
          onChanged: (value) {},
        ),
      ],
    );
  }
}
