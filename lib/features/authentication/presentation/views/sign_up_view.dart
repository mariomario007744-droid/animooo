import 'package:animooo/features/authentication/presentation/manager/confirm_password_cubit/confirm_password_cubit.dart';
import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_cubit.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/sign_up_view';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=> PasswordValidationRequirementsCubit()),
        BlocProvider(create:(context)=> ConfirmPasswordCubit()),
      ],
      child: Scaffold(body: SafeArea(child: SignUpViewBody()))
      );
  }
}
