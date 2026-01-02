import 'package:flutter/material.dart';

import '../../../core/constants/app_images/app_images.dart';
import '../../../core/constants/colors/app_colors.dart';
import '../../../shared/widgets/custom_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              height: 115,
              width: 110,
              image: AssetImage(AppImageAssets.appLogo),
            ),
            SizedBox(height: 10),
            Text(
              'MyExpenses',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: AppColors.caribbeanGreen,
                fontSize: 45,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            CustomButton(
              onTap: () {},
              child: Center(
                child: Text(
                  'Log In',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              height: 45,
              width: 207,
              color: AppColors.caribbeanGreen,
              borderRadius: BorderRadius.circular(25),
            ),
            SizedBox(height: 10),
            CustomButton(
              onTap: () {},
              child: Center(
                child: Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              height: 45,
              width: 207,
              color: AppColors.lightGreen,
              borderRadius: BorderRadius.circular(25),
            ),
            SizedBox(height: 15),
            CustomButton(
              onTap: () {},
              child: Center(
                child: Text(
                  'Forget Password?',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              height: 45,
              width: 207,
              borderRadius: BorderRadius.circular(25),
            ),
          ],
        ),
      ),
    );
  }
}
