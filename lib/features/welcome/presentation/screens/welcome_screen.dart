import 'package:expense_tracker_app/app_barrels.dart';
import 'package:expense_tracker_app/core/constants/app_colors/app_colors.dart';
import 'package:expense_tracker_app/features/auth/presentation/screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.wp(0.5),
          vertical: Responsive.hp(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                height: Responsive.hp(20),
                width: Responsive.wp(40),
                image: AssetImage(AppImageAssets.appLogo),
              ),
            ),
            SizedBox(height: Responsive.hp(1)),
            Center(
              child: Text(
                AppStringsAssets.appName,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: AppColors.caribbeanGreen,
                  fontSize: Responsive.sp(9),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: Responsive.hp(0.5)),
            Text(
              AppStringsAssets.welcomeSubTitle,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
                fontSize: Responsive.sp(4),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Responsive.hp(2.5)),
            CustomButton(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              height: Responsive.hp(7),
              width: Responsive.wp(60),
              color: AppColors.caribbeanGreen,
              borderRadius: 25,
              child: Center(
                child: Text(
                  AppStringsAssets.loginText,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: Responsive.sp(5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(height: Responsive.hp(1)),
            CustomButton(
              onTap: () {},
              height: Responsive.hp(7),
              width: Responsive.wp(60),
              color: AppColors.honeydew,
              borderRadius: 25,
              child: Center(
                child: Text(
                  AppStringsAssets.signUpText,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: Responsive.sp(5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(height: Responsive.hp(1.5)),
            CustomButton(
              onTap: () {},
              height: Responsive.hp(7),
              width: Responsive.wp(60),
              color: AppColors.honeydew,
              borderRadius: 25,
              child: Center(
                child: Text(
                  AppStringsAssets.forgetText,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: Responsive.sp(4),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
