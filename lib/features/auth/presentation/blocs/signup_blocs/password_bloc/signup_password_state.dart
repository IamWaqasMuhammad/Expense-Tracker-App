import 'package:equatable/equatable.dart';

class SignupPasswordState extends Equatable {
  final bool isPassVisible;
  final bool isConfirmPasswordVisible;

  const SignupPasswordState({
    this.isPassVisible = true,
    this.isConfirmPasswordVisible = true,
  });

  SignupPasswordState copyWith({bool? isPassVisible, bool? isConfirmPasswordVisible}) {
    return SignupPasswordState(
      isPassVisible: isPassVisible ?? this.isPassVisible,
      isConfirmPasswordVisible:
          isConfirmPasswordVisible ?? this.isConfirmPasswordVisible,
    );
  }

  @override
  List<Object> get props => [isPassVisible, isConfirmPasswordVisible];
}
