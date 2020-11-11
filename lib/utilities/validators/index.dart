class Validator {
  static String isEmpty(dynamic value) {
    if ((value as String).isEmpty) {
      return 'Empty field';
    }
    return null;
  }

  static String isAlpha(dynamic val) {
    final regex = RegExp(r'^[a-zA-Z ]+$');
    if (!regex.hasMatch(val)) {
      return 'enter letters only';
    }
    return null;
  }

  static String isNumeric(dynamic val) {
    bool valid(val) => double.tryParse(val) != null;
    if (!valid(val)) {
      return 'all digits must be numeric';
    }
    return null;
  }

  static String limit(dynamic value, {int min = 0, int max = 0}) {
    if (min != 0 && value.length < min) {
      return '$min minimum characters';
    } else if (max != 0 && value.length > max) {
      return '$max maximum characters';
    }
    return null;
  }

  static String isEmail(dynamic value) {
    if (!RegExp(
            r"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$")
        .hasMatch(value)) {
      return 'email is invalid';
    }
    return null;
  }

  static String confirm(dynamic value, dynamic confirmValue, dynamic key) {
    if (value != confirmValue) {
      return '$key mismatch';
    }
    return null;
  }
}
