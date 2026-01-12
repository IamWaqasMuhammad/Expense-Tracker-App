import 'package:expense_tracker_app/app_barrels.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_bloc.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_event.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_state.dart';
import 'package:expense_tracker_app/features/main/presentations/widgets/nav_bar/nav_bar_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key});

  final List<String> _icons = [
    AppIconsAssets.homeIcon,
    AppIconsAssets.analysisIcon,
    AppIconsAssets.transactionIcon,
    AppIconsAssets.categoryIcon,
    AppIconsAssets.profileIcon,
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Container(
          height: Responsive.hp(11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: isDark
                ? AppColors.cyprusGreen.withOpacity(0.2)
                : AppColors.lightGreen,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_icons.length, (index) {
              return NavBarItem(
                imgPath: _icons[index],
                isSelected: state.selectedIndex == index,
                onTap: () {
                  context.read<BottomNavBloc>().add(
                    BottomNavItemSelectedEvent(tabIndex: index),
                  );
                },
              );
            }),
          ),
        );
      },
    );
  }
}
