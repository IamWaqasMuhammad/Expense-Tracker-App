import 'package:expense_tracker_app/app_barrels.dart';

class NavBarItem extends StatelessWidget {
  final void Function()? onTap;
  final String imgPath;
  final bool isSelected;

  const NavBarItem({
    super.key,
    required this.onTap,
    required this.imgPath,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors
                    .caribbeanGreen // active color
              : (isDark ? AppColors.fenceGreen : AppColors.honeydew),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Image.asset(
            imgPath,
            height: 24,
            width: 24,
            color: isSelected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
