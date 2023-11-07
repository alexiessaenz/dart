import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forms/infrastructure/inputs/inputs.dart';
import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';


part 'register_state.dart';
class RegisterCubit extends Cubit<RegisterFormState>{
  //RegisterCubit(super.initialState);
  RegisterCubit(): super(const RegisterFormState());
  void onSubmit(){
    emit(state.copyWith(
        formStatus: FormStatus.validating,
        username: Username.dirty(state.username.value),
        email: Email.dirty(state.email.value),
        password: Password.dirty(state.password.value),

        isValid: Formz.validate([
          state.username,
          state.email,
          state.password
        ])
      ));

    print('Cubit Submit: $state');


  }

  void usernameChanged (String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(
      username: username,
      //formStatus: FormStatus.valid,
      isValid: Formz.validate([
        username,
        state.email,
        state.password
      ])
    ));
  }

  void emailChanged (String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      //formStatus: FormStatus.valid,
      isValid: Formz.validate([
        state.username,
        email,
        state.password
      ])
    ));
  }

  void passwordlChanged (String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      //formStatus: FormStatus.valid,
      isValid: Formz.validate([
        state.username,
        state.email,
        password
      ])
    ));
  }
  

}