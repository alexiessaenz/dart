import 'package:formz/formz.dart';

// Define input validation errors
enum EmailError { empty, format }

// Extend FormzInput and provide the input type and error type.
class Email extends FormzInput<String, EmailError> {

  static final RegExp emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  );

  // Call super.pure to represent an unmodified form input.
  const Email.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Email.dirty( String value ) : super.dirty(value);
  
  String? get errorMessage {
    // switch (error) {
    //   case EmailError.empty:
    //     return 'Email is required';
    //   case EmailError.format:
    //     return 'Invalid email address';
    //   default:
    //     return null;
    // }
    if(isValid || isPure) return null;
    if(displayError == EmailError.empty) return 'Email is required';
    if(displayError == EmailError.format) return 'Invalid email address';
    return null;

    
  }
  
  @override
  EmailError? validator(String value) {
    if(value.isEmpty || value.trim().isEmpty) return EmailError.empty;
    if(!emailRegExp.hasMatch(value)) return EmailError.format;
    return null;
  }
}