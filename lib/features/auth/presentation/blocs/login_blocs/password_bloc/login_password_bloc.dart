import 'package:bloc/bloc.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_event.dart';
import 'package:expense_tracker_app/features/auth/presentation/blocs/login_blocs/password_bloc/login_password_state.dart';

class LoginPasswordBloc extends Bloc<LoginPasswordEvent, LoginPasswordState> {
  LoginPasswordBloc() : super(LoginPasswordState()) {
    on<LoginVisiblePasswordToggleEvent>(_loginVisiblePasswordToggleEvent);
  }

  void _loginVisiblePasswordToggleEvent(
    LoginVisiblePasswordToggleEvent event,
    Emitter<LoginPasswordState> emit,
  ) {
    emit(state.copyWith(isPassVisible: !state.isPassVisible));
  }
}
