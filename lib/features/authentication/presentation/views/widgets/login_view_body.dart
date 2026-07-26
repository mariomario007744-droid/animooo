import 'package:animooo/core/widgets/Logo.dart';
import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_password_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/row_text_new_acount.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/text_forget_password.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/title_login_and_signup.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/validations.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SizedBox(height: 92, child: Logo())),
            SizedBox(height: 40),
            Center(child: TitleLoginAndSignUpView(text: 'Log In')),
            CustomFieldLabelText(text: 'Email'),
            CustomTextFormField(
              hintText: 'Enter your email address',
              validator: Validations.validationEmail,
            ),
            SizedBox(height: 8),
            CustomFieldLabelText(text: 'Password'),
            CustomPasswordFormField(
              hintText: 'Enter your password',
              validator: Validations.validationLoginPassword,
            ),
            SizedBox(height: 8),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: TextForgetPassword(),
            ),
            SizedBox(height: 32),
            CustomButton(
              onPressed: () => validateLogicButton(context: context),
              text: 'Log In',
            ),
            Spacer(),
            RowTextNewAcount(),
          ],
        ),
      ),
    );
  }

  validateLogicButton({required BuildContext context}) {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Done')));
    }
  }
}
