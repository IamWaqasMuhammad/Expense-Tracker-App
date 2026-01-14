
import '../../../../../app_barrels.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState()) {
    on<BottomNavItemSelectedEvent>(_bottomNavItemSelectedEvent);
  }

  void _bottomNavItemSelectedEvent(BottomNavItemSelectedEvent event, Emitter<BottomNavState> emit){
     emit(state.copyWith(selectedIndex: event.tabIndex));
  }
}
