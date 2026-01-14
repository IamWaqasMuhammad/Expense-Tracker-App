import 'package:expense_tracker_app/app_barrels.dart';




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
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: Responsive.hp(9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
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
          ),
        );
      },
    );
  }
}
