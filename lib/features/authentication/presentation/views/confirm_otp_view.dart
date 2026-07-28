import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/back_arrow_app_bar.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_otp_widget.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/resend_code_timer.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/sub_titele_forget_screens.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/titele_forget_screens.dart';
import 'package:flutter/material.dart';

class ConfirmOTPCodeView extends StatelessWidget {
  ConfirmOTPCodeView({super.key});
  static const String routeName = '/confirm_otp_code_view';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const BackArrowAppBar(text: 'Cancel'),
              Expanded(
                child: Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      TiteleForgetScreens(text: 'OTP Verfication'),
                      SubTiteleForgetScreens(
                        text:
                            'Please enter the 4 digit code sent your phone number ',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      CustomOTPWidget(),
                      const SizedBox(height: 50),
                      CustomButton(
                        text: 'Confirm',
                        onPressed: () => navigateToHomeView(context: context),
                      ),
                      SizedBox(height: 8),
                      ResendCodeTimer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigateToHomeView({required BuildContext context}) {
    print('DoneXXXX');
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      print('Done');
    }
  }
}
