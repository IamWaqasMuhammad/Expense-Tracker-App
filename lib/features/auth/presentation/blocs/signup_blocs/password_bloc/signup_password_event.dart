import 'package:equatable/equatable.dart';

abstract class SignupPasswordEvent extends Equatable {
  const SignupPasswordEvent();

  @override
  List<Object> get props => [];
}

class PasswordVisibilityToggledEvent extends SignupPasswordEvent {}
class ConfirmPasswordVisibilityToggledEvent extends SignupPasswordEvent {}

