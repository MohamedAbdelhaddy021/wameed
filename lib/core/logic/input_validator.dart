class InputValidator {
  static String? userName(value) {
    if (value!.isEmpty) {
      return "Enter a user name";
    } else {
      return null;
    }
  }

  static String? email(value) {
    if (value!.isEmpty) {
      return "Enter an email";
    } else {
      return null;
    }
  }

  static String? experience(value) {
    if (value!.isEmpty) {
      return "Experience !!";
    } else {
      return null;
    }
  }
static String? priceOfSession(value) {
  if (value!.isEmpty) {
    return "Price of session !!";
  } else {
    return null;
  }
}
static String? id(value) {
  if (value!.isEmpty) {
    return "Enter your ID";
  } else if (value.length < 14 || value.length > 14) {
    return "ID isn't correct";
  } else {
    return null;
  }
}

  static String? phoneNumber(value) {
    if (value!.isEmpty) {
      return "Enter your number";
    } else if (value.length != 11) {
      return "Enter a valid number";
    } else {
      return null;
    }
  }

  static String? password(value) {
    if (value!.isEmpty) {
      return "Enter a new password";
    } else if (value.length < 8) {
      return "Password must be 8 or more characters";
    } else {
      return null;
    }
  }

  static String? confirmPassword(value, confirmPassword) {
    if (value != confirmPassword) {
      return "password is not identical";
    } else if (value!.isEmpty) {
      return "Enter confirm password";
    } else {
      return null;
    }
  }
}
