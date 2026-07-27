abstract class Validations {
  static validationEmail(String? value) {
    if (value == null) {
      return "Email address can't be empty";
    }
    if (value.trim().isEmpty) {
      return "Email address can't be empty";
    }
    if (!value.contains('@')) {
      return 'Email must contain an "@"';
    }
    if (!value.trim().toLowerCase().endsWith('.com')) {
      return 'Email must end with ".com"';
    }
  }

  static validationLoginPassword(String? value) {
    if (value == null) {
      return "Password can't be empty";
    }
    if (value.trim().isEmpty) {
      return "Password can't be empty";
    }
    if (value.length < 12) {
      return 'Short password!';
    }
  }

  static nameText(String? value) {
    if (value == null) {
      return "This field can't be empty";
    }
    if (value.trim().isEmpty) {
      return "This field can't be empty";
    }
  }

  static phoneNumber(String? value) {
    if (value == null) {
      return "This field can't be empty";
    }
    if (value.trim().isEmpty) {
      return "This field can't be empty";
    }
    if (value.length != 11) {
      return "The phone number must consist of 11 digits.";
    }
  }
}
