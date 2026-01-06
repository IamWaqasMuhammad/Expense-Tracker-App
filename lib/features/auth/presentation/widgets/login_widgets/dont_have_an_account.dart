import '../../../../../app_barrels.dart';

class DontHaveAnAccountRowWidget extends StatelessWidget {
  const DontHaveAnAccountRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Dont have an Account
        Text(
          AppStringsAssets.dontHaveAnAccount,
          style: Theme.of(context).textTheme.labelSmall!
              .copyWith(
            fontSize: Responsive.sp(4),
            fontWeight: FontWeight.w400,
            color: isDark
                ? AppColors.lightGreen
                : AppColors.voidColor,
          ),
        ),
        SizedBox(width: Responsive.wp(1)),

        /// Signup Button
        CustomButton(
          height: Responsive.hp(5),
          width: Responsive.wp(18),
          borderRadius: 20,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            );
          },
          child: Text(
            AppStringsAssets.signUpText,
            style: Theme.of(context).textTheme.bodySmall!
                .copyWith(
              fontSize: Responsive.sp(3.8),
              fontWeight: FontWeight.w700,
              color: isDark
                  ? AppColors.honeydew.withOpacity(
                0.5,
              )
                  : AppColors.voidColor,
            ),
          ),
        ),
      ],
    );
  }
}
