import 'package:expense_tracker_app/app_barrels.dart';

class OrSignupWithWidget extends StatelessWidget {
  const OrSignupWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        SizedBox(height: Responsive.hp(2)),
        /// Or SignUp With
        Center(
          child: Text(
            AppStringsAssets.orSignUpWith,
            style: Theme.of(context).textTheme.labelSmall!
                .copyWith(
              fontSize: Responsive.sp(2),
              fontWeight: FontWeight.w400,
              color: isDark
                  ? AppColors.lightGreen
                  : AppColors.voidColor,
            ),
          ),
        ),
        SizedBox(height: Responsive.hp(2)),

      ],
    );
  }
}
