import 'package:animooo/core/widgets/Logo.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/login_view_body.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/row_text_new_acount.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/title_login_and_signup.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 92, child: Logo()),
              SizedBox(height: 40),
              Center(child: TitleLoginAndSignUpView(text: 'Log In')),
              Expanded(child: LoginViewBody()),
              RowTextNewAcount(),
            ],
          ),
        ),
      ),
    );
  }
}














