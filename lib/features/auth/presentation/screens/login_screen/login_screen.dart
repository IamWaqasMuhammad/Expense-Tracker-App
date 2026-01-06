import '../../../../../app_barrels.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.fenceGreen : AppColors.caribbeanGreen,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: Responsive.hp(10)),
              child: Text(
                AppStringsAssets.loginTitle,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: isDark ? AppColors.lightGreen : AppColors.voidColor,
                  fontSize: Responsive.sp(8),
                ),
              ),
            ),
          ),

          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Container(
              height: Responsive.hp(75),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Responsive.hp(7)),
                      Text(
                        AppStringsAssets.emailLabel,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: Responsive.sp(4),
                          fontWeight: FontWeight.w400,
                          color: isDark
                              ? AppColors.lightGreen
                              : AppColors.voidColor,
                        ),
                      ),
                      SizedBox(height: Responsive.hp(1)),
                      CustomTextField(
                        hintText: AppStringsAssets.emailHintText,
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(height: Responsive.hp(3)),
                      Text(
                        AppStringsAssets.passwordLabel,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: Responsive.sp(4),
                          fontWeight: FontWeight.w400,
                          color: isDark
                              ? AppColors.lightGreen
                              : AppColors.voidColor,
                        ),
                      ),
                      SizedBox(height: Responsive.hp(1)),
                      CustomTextField(
                        hintText: AppStringsAssets.passwordHintText,
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                        suffixIcon: CustomButton(
                          height: Responsive.hp(1),
                          width: Responsive.wp(1),
                          borderRadius: 50,
                          color: Colors.transparent,
                          child: Align(
                            alignment: AlignmentGeometry.centerRight,
                            child: Center(
                              child: Image.asset(
                                AppIconsAssets.visibilityOffIcon,
                                width: Responsive.hp(3),
                                height: Responsive.wp(3),
                                color: isDark
                                    ? AppColors.honeydew.withOpacity(0.5)
                                    : AppColors.fenceGreen,
                                gaplessPlayback: false,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(height: Responsive.hp(1.5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            onTap: () {},
                            height: Responsive.hp(5),
                            width: Responsive.wp(40),
                            borderRadius: 25,
                            child: Center(
                              child: Text(
                                AppStringsAssets.forgetText,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(
                                      fontSize: Responsive.sp(3),
                                      fontWeight: FontWeight.w500,
                                      color: isDark
                                          ? AppColors.honeydew.withOpacity(0.5)
                                          : AppColors.voidColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Responsive.hp(5)),
                      Center(
                        child: CustomButton(
                          onTap: () {},
                          height: Responsive.hp(7),
                          width: Responsive.wp(60),
                          color: AppColors.caribbeanGreen,
                          borderRadius: 25,
                          child: Center(
                            child: Text(
                              AppStringsAssets.loginText,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontSize: Responsive.sp(4.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Responsive.hp(1.5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          CustomButton(
                            height: Responsive.hp(5),
                            width: Responsive.wp(18),
                            borderRadius: 20,
                            onTap: () {},
                            child: Text(
                              AppStringsAssets.signUpText,
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    fontSize: Responsive.sp(3.8),
                                    fontWeight: FontWeight.w700,
                                    color: isDark
                                        ? AppColors.honeydew.withOpacity(0.5)
                                        : AppColors.voidColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Responsive.hp(2)),
                      Center(
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
                      ),
                      SizedBox(height: Responsive.hp(2)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          SizedBox(width: Responsive.hp(1.5),),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
