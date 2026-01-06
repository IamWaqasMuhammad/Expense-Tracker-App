import 'package:expense_tracker_app/app_barrels.dart';

class OrLoginWithForgotWidget extends StatelessWidget {
  const OrLoginWithForgotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return  Center(
      child: Text(
        AppStringsAssets.orLoginWith,
        style: Theme.of(context).textTheme.labelSmall!
            .copyWith(
          fontSize: Responsive.sp(2),
          fontWeight: FontWeight.w400,
          color: isDark
              ? AppColors.lightGreen
              : AppColors.voidColor,
        ),
      ),
    );
  }
}
