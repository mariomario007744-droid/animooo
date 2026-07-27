import 'package:animooo/features/authentication/presentation/manager/password_validation_requirements_cubit/password_validation_requirements_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordValidationRequirementsCubit
    extends Cubit<PasswordValidationRequirementsState> {
  PasswordValidationRequirementsCubit()
    : super(PasswordValidationRequirementsInitial());
  bool minChar = false;
  bool uppercaseChar = false;
  bool lowercaseChar = false;
  bool specialChar = false;
  bool number = false;
  bool allDone = false;
  validatePassword(String text) {
    if (text.isNotEmpty) {
      if (text.length >= 12) {
        minChar = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        minChar = false;
        emit(PasswordValidationRequirementsInitial());
      }


      if (text.contains(RegExp(r'[A-Z]'))) {
        uppercaseChar = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        uppercaseChar = false;
        emit(PasswordValidationRequirementsInitial());
      }


      if (text.contains(RegExp(r'[a-z]'))) {
        lowercaseChar = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        lowercaseChar = false;
        emit(PasswordValidationRequirementsInitial());
      }


      if (text.contains(RegExp(r'[^\w\s]'))) {
        specialChar = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        specialChar = false;
        emit(PasswordValidationRequirementsInitial());
      }


      if (text.contains(RegExp(r'[0-9]'))) {
        number = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        number = false;
        emit(PasswordValidationRequirementsInitial());
      }


      if (minChar == true &&
          uppercaseChar == true &&
          lowercaseChar == true &&
          specialChar == true &&
          number == true) {
        allDone = true;
        emit(PasswordValidationRequirementsInitial());
      } else {
        allDone = false;
        emit(PasswordValidationRequirementsInitial());
      }


    } else {
      minChar = false;
      uppercaseChar = false;
      lowercaseChar = false;
      specialChar = false;
      number = false;
      allDone = false;
      emit(PasswordValidationRequirementsInitial());
    }
  }
}
