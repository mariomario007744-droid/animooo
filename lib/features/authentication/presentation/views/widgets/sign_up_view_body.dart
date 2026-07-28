import 'package:animooo/core/widgets/Logo.dart';
import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/add_image_section.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/auth_toggle_row.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/create_password_section.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/title_login_and_signup.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/validations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(height: 92, child: Logo()),
            SizedBox(height: 40),
            Center(child: TitleLoginAndSignUpView(text: 'Sign Up')),
            CustomFieldLabelText(text: 'First Name'),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: 'Enter your First Name',
              validator: Validations.nameText,
            ),
            SizedBox(height: 16),
            CustomFieldLabelText(text: 'Last Name'),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: 'Enter your Last Name',
              validator: Validations.nameText,
            ),
            SizedBox(height: 16),
            CustomFieldLabelText(text: 'Email'),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: 'Enter your email address',
              validator: Validations.validationEmail,
            ),
            SizedBox(height: 16),
            CustomFieldLabelText(text: 'Phone'),
            SizedBox(height: 8),
            CustomTextFormField(
              hintText: 'Enter your Phone',
              validator: Validations.phoneNumber,
            ),
            SizedBox(height: 16),
            CreatePasswordSection(),
            SizedBox(height: 16),
            CustomFieldLabelText(text: 'Upload Image For Your Profile'),
            AddImageSection(),
            SizedBox(height: 16),
            CustomButton(
              onPressed: () => validateLogicButton(context: context),
              text: 'Sign Up',
            ),
            SizedBox(height: 16),
            AuthToggleRow(
              text: 'Have an account already? ',
              navigationText: 'Log in',
              onTap: () => context.pop(),
            ),
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

