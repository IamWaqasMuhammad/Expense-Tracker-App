import 'package:expense_tracker_app/app_barrels.dart';

class MainBottomContainer extends StatelessWidget {

  final Widget child;
  final double widthPercentage;
  const MainBottomContainer({super.key,required this.child,required this.widthPercentage});

  @override
  Widget build(BuildContext context) {
        final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          height: Responsive.hp(widthPercentage),
          width: MediaQuery.of(context).size.width,
          color: isDark ? AppColors.cyprus : AppColors.honeydew,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.wp(5),
              vertical: Responsive.hp(3),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: child,
          ),
        ),
      ),
    ),
    );
  }
}