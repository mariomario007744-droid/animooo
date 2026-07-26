import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/text_forget_password.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          CustomFieldLabelText(text: 'Email'),
          CustomTextFormField(hintText: 'Enter your email address'),
          SizedBox(height: 8),
          CustomFieldLabelText(text: 'Password'),
          CustomPasswordFormField(hintText: 'Enter your password'),
          SizedBox(height: 8),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: TextForgetPassword(),
          ),
          SizedBox(height: 32),
          CustomButton(onPressed: () {}, text: 'Log In'),
        ],
      ),
    );
  }
}