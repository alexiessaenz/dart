import 'package:formz/formz.dart';
//define input validation errors
enum PasswordError {empty,length,format}

//extendformzImput and provider the input type and error type
class Password extends FormzInput<String,PasswordError> {
  //call super.pure to represent an unmodied forminput
  const Password.pure() : super.pure(''); //call super .pure to represent an unmodified form input

  //call super dirty to represent a modified form input
  const Password.dirty(String value ) : super.dirty(value); //call super .dirty to represent a modified form input

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == PasswordError.empty) return 'Password is required';
    if(displayError == PasswordError.length) return 'Password must be at least 8 characters';
    if(displayError == PasswordError.format) return 'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character';
    return null;
  }

  @override //override validador to handle validating a given input value
  PasswordError? validator(String value) {
    if (value.isEmpty|| value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 8) return PasswordError.length;
    if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)) return PasswordError.format;
    return null;
  }
}