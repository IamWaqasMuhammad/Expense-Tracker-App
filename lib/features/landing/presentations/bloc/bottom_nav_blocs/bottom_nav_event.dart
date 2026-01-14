
abstract class BottomNavEvent {
  const BottomNavEvent();

  List<Object> get props => [];
}

class BottomNavItemSelectedEvent extends BottomNavEvent {
  final int tabIndex;
  const BottomNavItemSelectedEvent({this.tabIndex=0});
}


