import 'package:bloc/bloc.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_event.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/signup_blocs/password_bloc/signup_password_state.dart';

class SignupPasswordBloc
    extends Bloc<SignupPasswordEvent, SignupPasswordState> {
  SignupPasswordBloc() : super(SignupPasswordState()) {
    on<PasswordVisibilityToggledEvent>(_togglePassword);
    on<ConfirmPasswordVisibilityToggledEvent>(_toggleConfirmPassword);
  }

  void _togglePassword(
    PasswordVisibilityToggledEvent event,
    Emitter<SignupPasswordState> emit,
  ) {
    emit(state.copyWith(isPassVisible: !state.isPassVisible));
  }

  void _toggleConfirmPassword(
    ConfirmPasswordVisibilityToggledEvent event,
    Emitter<SignupPasswordState> emit,
  ) {
    emit(
      state.copyWith(isConfirmPasswordVisible: !state.isConfirmPasswordVisible),
    );
  }
}
