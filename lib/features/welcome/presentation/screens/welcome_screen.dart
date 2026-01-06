import 'package:expense_tracker_app/app_barrels.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        //statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.wp(3),
            vertical: Responsive.hp(3),
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
                      fontSize: Responsive.sp(4.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: Responsive.hp(2.5)),
              CustomButton(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                height: Responsive.hp(7),
                width: Responsive.wp(60),
                color: AppColors.lightGreen,
                borderRadius: 25,
                child: Center(
                  child: Text(
                    AppStringsAssets.signUpText,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: Responsive.sp(4.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
