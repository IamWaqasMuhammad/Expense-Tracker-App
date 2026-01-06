import 'package:expense_tracker_app/app_barrels.dart';

class ForgotGoogleFacebookWidget extends StatelessWidget {
  const ForgotGoogleFacebookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Facebook Login Button
        CustomButton(
          height: Responsive.hp(5),
          width: Responsive.wp(10),
          borderRadius: 50,
          child: Image.asset(
            height: Responsive.hp(10),
            width: Responsive.wp(10),
            AppIconsAssets.facebookIcon,
            fit: BoxFit.contain,
            color: isDark
                ? AppColors.lightGreen
                : AppColors.voidColor,
          ),
          onTap: () {},
        ),
        SizedBox(width: Responsive.hp(1.5)),

        /// Google Login button
        CustomButton(
          height: Responsive.hp(5),
          width: Responsive.wp(10),
          borderRadius: 50,
          child: Image.asset(
            height: Responsive.hp(10),
            width: Responsive.wp(10),
            AppIconsAssets.googleIcon,
            fit: BoxFit.contain,
            color: isDark
                ? AppColors.lightGreen
                : AppColors.voidColor,
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
