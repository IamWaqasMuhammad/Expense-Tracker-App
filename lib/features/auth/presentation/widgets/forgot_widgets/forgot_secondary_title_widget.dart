import 'package:expense_tracker_app/app_barrels.dart';

class ForgotSecondaryTitleWidget extends StatelessWidget {
  const ForgotSecondaryTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Text(
      AppStringsAssets.restPasswordTitle,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: isDark
            ? AppColors.lightGreen
            : AppColors.voidColor,
        fontSize: Responsive.sp(5),
      ),
    );
  }
}
