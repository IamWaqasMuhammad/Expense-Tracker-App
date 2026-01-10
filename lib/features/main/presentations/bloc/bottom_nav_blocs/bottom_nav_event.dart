
abstract class BottomNavEvent {
  const BottomNavEvent();

  List<Object> get props => [];
}

class BottomNavItemSelectedEvent extends BottomNavEvent {
  final int index;
  const BottomNavItemSelectedEvent(this.index);
}


