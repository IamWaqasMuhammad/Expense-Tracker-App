import 'package:equatable/equatable.dart';

class LoginPasswordState extends Equatable {
  final bool isPassVisible;

  const LoginPasswordState({this.isPassVisible = true});

  LoginPasswordState copyWith({bool? isPassVisible}) {
    return LoginPasswordState(
      isPassVisible: isPassVisible ?? this.isPassVisible,
    );
  }

  @override
  List<Object> get props => [isPassVisible];
}
