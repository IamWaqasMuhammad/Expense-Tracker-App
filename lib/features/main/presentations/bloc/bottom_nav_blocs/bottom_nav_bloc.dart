import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_event.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState()) {
    on<BottomNavItemSelectedEvent>(_bottomNavItemSelectedEvent);
  }

  void _bottomNavItemSelectedEvent(BottomNavItemSelectedEvent event, Emitter<BottomNavState> emit){
     emit(state.copyWith(selectedIndex: event.tabIndex));
  }
}
