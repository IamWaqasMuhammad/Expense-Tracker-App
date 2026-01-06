import 'package:expense_tracker_app/app_barrels.dart';

class ForgotTitleWidget extends StatelessWidget {
  const ForgotTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: Responsive.hp(10)),
            child: Text(
              AppStringsAssets.forgetTitle,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: isDark
                    ? AppColors.lightGreen
                    : AppColors.voidColor,
                fontSize: Responsive.sp(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
