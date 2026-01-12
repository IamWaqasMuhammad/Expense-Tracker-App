import 'package:expense_tracker_app/app_barrels.dart';

class NavBarItem extends StatelessWidget {
  final bool isSelected;
  final String imgPath;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.isSelected,
    required this.imgPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isSelected ? Responsive.hp(6) : Responsive.hp(5),
        width: isSelected ? Responsive.wp(13) : Responsive.wp(8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.caribbeanGreen : AppColors.transperent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(
            imgPath,
            width: isSelected ? Responsive.hp(15) : Responsive.hp(12),
            height: isSelected ? Responsive.wp(8) : Responsive.wp(6),
            color: isDark ? AppColors.honeydew : AppColors.voidColor,
          ),
        ),
      ),
    );
  }
}
