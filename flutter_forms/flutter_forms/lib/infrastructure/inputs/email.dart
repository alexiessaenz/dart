import 'package:formz/formz.dart';

enum EmailValidationError { invalid }
enum EmailError{empty, format}

class Email extends FormzInput<String,EmailError> {
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@(\w-]+\.)+[\w-]{2,4}$');

  const Email.pure() : super.pure(''); //call super .pure to represent an unmodified form input

  const Email.dirty(String value ) : super.dirty(value); //call super .dirty to represent a modified form input

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == EmailError.empty) return 'Email is required';
    if(displayError == EmailError.format) return 'Email format is invalid';
    return null;
  }

  @override
  EmailError? validator(String value) {
    if (value.isEmpty|| value.trim().isEmpty) return EmailError.empty;
    if (!emailRegExp.hasMatch(value)) return EmailError.format;
    return null;
  }
}