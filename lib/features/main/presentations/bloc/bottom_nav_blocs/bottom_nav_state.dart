import 'package:equatable/equatable.dart';

class BottomNavState extends Equatable {
  final int selectedIndex;
  const BottomNavState({this.selectedIndex = 0});

  BottomNavState copyWith({int? selectedIndex}) {
    return BottomNavState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }

  @override
  List<Object> get props => [selectedIndex];
}
