import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/features/authentication/presentation/manager/confirm_password_cubit/confirm_password_cubit.dart';
import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_cubit.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/back_arrow_app_bar.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/create_password_section.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/titele_forget_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNewPasswordView extends StatelessWidget {
  CreateNewPasswordView({super.key});
  static const String routeName = '/create_new_password_view';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PasswordValidationRequirementsCubit(),
        ),
        BlocProvider(create: (context) => ConfirmPasswordCubit()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const BackArrowAppBar(text: 'Cancel'),
                SizedBox(height: 8),
                Expanded(
                  child: Form(
                    key: formKey,
                    child: ListView(
                      children: [
                        const TiteleForgetScreens(text: 'OTP Verfication'),
                        CreatePasswordSection(),
                        SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                        CustomButton(
                          onPressed: () => validateLogicButton(context: context),
                          text: 'Submit',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
