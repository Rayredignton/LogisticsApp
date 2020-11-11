import 'index.dart';

class ResetPinValidator {
  static String passcode(dynamic value) {
    return Validator.isEmpty(value) ?? Validator.isNumeric(value);
  }
}

class SignUpValidators {
  static String firstName(dynamic value) {
    return Validator.isEmpty(value) ??
        Validator.limit(value, min: 2) ??
        Validator.isAlpha(value);
  }

  static String lastName(dynamic value) {
    return Validator.isEmpty(value) ??
        Validator.limit(value, min: 2) ??
        Validator.isAlpha(value);
  }

  static String email(dynamic value) {
    return Validator.isEmpty(value) ?? Validator.isEmail(value);
  }

  static String password(dynamic value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter Stronger Password';
      else
        return null;
    }
  }

  static String otpCode(dynamic value) {
    return Validator.isEmpty(value) ??
        Validator.limit(value, min: 6, max: 6) ??
        Validator.isNumeric(value);
  }

  static String mobileNumber(dynamic value) {
    return Validator.isEmpty(value) ??
        Validator.limit(value, min: 11, max: 11) ??
        Validator.isNumeric(value);
  }
  static String postCode(dynamic value) {
    return Validator.isEmpty(value) ??
        Validator.limit(value, min: 4, max: 9) ??
        Validator.isNumeric(value);
  }
}
