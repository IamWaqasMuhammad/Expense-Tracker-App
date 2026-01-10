import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_bloc.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_event.dart';
import 'package:expense_tracker_app/features/main/presentations/bloc/bottom_nav_blocs/bottom_nav_state.dart';
import 'package:expense_tracker_app/app_barrels.dart';
import 'package:expense_tracker_app/features/main/presentations/widgets/nav_bar/nav_bar_item.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.fenceGreen.withOpacity(0.9)
              : AppColors.honeydew,
          borderRadius: BorderRadius.circular(40),
        ),
        child: BlocBuilder<BottomNavBloc, BottomNavState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  context,
                  AppIconsAssets.homeIcon,
                  0,
                  state.selectedIndex,
                ),
                _buildNavItem(
                  context,
                  AppIconsAssets.analysisIcon,
                  1,
                  state.selectedIndex,
                ),
                _buildNavItem(
                  context,
                  AppIconsAssets.transactionIcon,
                  2,
                  state.selectedIndex,
                ),
                _buildNavItem(
                  context,
                  AppIconsAssets.categoryIcon,
                  3,
                  state.selectedIndex,
                ),
                _buildNavItem(
                  context,
                  AppIconsAssets.profileIcon,
                  4,
                  state.selectedIndex,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    String iconPath,
    int index,
    int selectedIndex,
  ) {
    return NavBarItem(
      imgPath: iconPath,
      isSelected: selectedIndex == index,
      onTap: () {
        // Dispatch event instead of setState
        context.read<BottomNavBloc>().add(BottomNavItemSelectedEvent(index));
      },
    );
  }
}
