import 'package:equatable/equatable.dart';

abstract class LoginPasswordEvent {
  const LoginPasswordEvent();

  @override
  List<Object> get props => [];
}

class LoginVisiblePasswordToggleEvent extends LoginPasswordEvent {

}
