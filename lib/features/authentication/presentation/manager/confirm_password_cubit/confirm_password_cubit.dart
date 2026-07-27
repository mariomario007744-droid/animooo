import 'package:animooo/features/authentication/presentation/manager/confirm_password_cubit/confirm_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPasswordCubit extends Cubit<ConfirmPasswordState> {
  ConfirmPasswordCubit() : super(ConfirmPasswordInitial());
  String passwordText = '';
  bool confirmed = false;
  confirmPassword(String text) {
    if (passwordText == text) {
      confirmed = true;
    }else{
      confirmed = false;
    }
  }
}
