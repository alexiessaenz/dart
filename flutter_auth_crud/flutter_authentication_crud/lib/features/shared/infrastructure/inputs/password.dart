import 'package:formz/formz.dart';

enum PasswordError {empty,lenght, format}

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty( String value ) : super.dirty(value);

  //static final RegExp passwordRegExp = RegExp( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$', );
  static final RegExp passwordRegExp = RegExp(
    r'(?:(?=.\d)|(?=.\W+))(?![.\n])(?=.[A-Z])(?=.[a-z]).*$',
  );
  String? get errorMessage {
    if(isValid || isPure) return null;
    if(displayError == PasswordError.empty) return 'Password is required';
    if(displayError == PasswordError.lenght) return 'Password must be at least 8 characters';
    if(displayError == PasswordError.format) return 'Password must contain at least one uppercase letter, one lowercase letter and one number';
    return null;
  }

  @override
  PasswordError? validator(String value) {
    if(value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if(value.length < 8) return PasswordError.lenght;
    if(!passwordRegExp.hasMatch(value)) return PasswordError.format;
    return null;
  }
}