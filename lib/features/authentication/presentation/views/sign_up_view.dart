import 'package:animooo/features/authentication/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/sign_up_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignUpViewBody()),
    );
  }
}