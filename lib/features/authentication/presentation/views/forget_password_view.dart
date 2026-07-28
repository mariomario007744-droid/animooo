import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/views/confirm_otp_view.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/back_arrow_app_bar.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_field_label_text.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/sub_titele_forget_screens.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/titele_forget_screens.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/validations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});
  static const String routeName = '/forget_password_view';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: formKey,
            child: ListView(children: [BackArrowAppBar(text: 'Back'),
            SizedBox(height: 8,),
            TiteleForgetScreens(text: 'Forget Your Password ?'),
            SubTiteleForgetScreens(text: "Please enter the email address associated with your account, and we'll send you OTP to reset your password."),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            CustomFieldLabelText(text: 'Email'),
              SizedBox(height: 8),
              CustomTextFormField(
                hintText: 'Enter your email address',
                validator: Validations.validationEmail,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.15,),
              CustomButton(
                onPressed: () => validateLogicButton(context: context),
                text: 'Send  Code',
              ),
            ]),
          ),
        ),
      ),
    );
  }
    validateLogicButton({required BuildContext context}) {
    if (formKey.currentState!.validate()) {
        context.push(ConfirmOTPCodeView.routeName);

    }
  }
}