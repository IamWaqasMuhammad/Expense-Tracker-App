import 'package:expense_tracker_app/app_barrels.dart';

class MainBottomContainer extends StatelessWidget {

  final Widget child;
  const MainBottomContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
        final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: Responsive.hp(70),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDark ? AppColors.cyprus : AppColors.lightGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Responsive.wp(5)),
                  child: SingleChildScrollView(
                    child: child,
                  ),
                ),
              ),
            );
  }
}