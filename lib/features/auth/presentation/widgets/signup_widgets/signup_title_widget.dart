import 'package:expense_tracker_app/app_barrels.dart';

class SignUpTitleWidget extends StatelessWidget {
  const SignUpTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: Responsive.hp(8)),
            child: Text(
              AppStringsAssets.signUpTitle,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                fontSize: Responsive.sp(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
