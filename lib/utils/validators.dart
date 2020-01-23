import 'dart:async';

mixin Validators {
  static String _emailRegex =
      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$";

  // should contain at least one upper case
  // should contain at least one lower case
  // should contain at least one digit
  // at least 8 characters
  static String _passwordRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';

  var emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    bool result = RegExp(_emailRegex).hasMatch(email);
    if (result == true) {
      sink.add(email);
    } else {
      sink.addError('''Email is not valid!''');
    }
  });

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    bool result = RegExp(_passwordRegex).hasMatch(password);
    if (result) {
      sink.add(password);
    } else {
      sink.addError('''Password is not valid!
      should contain at least one upper case
      should contain at least one lower case
      at least 8 characters''');
    }
  });
}
