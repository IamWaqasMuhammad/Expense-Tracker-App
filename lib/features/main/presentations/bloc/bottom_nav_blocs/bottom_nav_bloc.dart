import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_event.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState()) {
    on<BottomNavItemSelectedEvent>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }
}
