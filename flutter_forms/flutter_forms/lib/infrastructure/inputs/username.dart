import 'package:formz/formz.dart';

enum UsernameError{empty,length}

class Username extends FormzInput<String, UsernameError> {
  const Username.pure() : super.pure(''); //call super .pure to represent an unmodified form input

  const Username.dirty(String value ) : super.dirty(value); //call super .dirty to represent a modified form input

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == UsernameError.empty) return 'Username is required';
    if(displayError == UsernameError.length) return 'Username must be at least 8 characters';
    return null;
  }

  @override
  UsernameError? validator(String value) {
    if (value.isEmpty|| value.trim().isEmpty) return UsernameError.empty;
    if (value.length < 8) return UsernameError.length;
    return null;
  }
}