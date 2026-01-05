import 'package:expense_tracker_app/core/constants/app_colors/app_colors.dart';

import '../../../../../app_barrels.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

  final bool isDark = Theme.of(context).brightness==Brightness.dark;


    return Scaffold(
      backgroundColor: isDark? AppColors.fenceGreen:AppColors.caribbeanGreen,
      body: Stack(
        children: [
          Positioned(
              top: 90,
              left: 112,
              child: Text('Welcome',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: isDark?AppColors.lightGreen:AppColors.voidColor,
                fontSize: Responsive.sp(8)
              ),),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: Responsive.hp(75),
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark?AppColors.cyprus:AppColors.honeydew,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.wp(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Responsive.hp(10),),
                    Text('Email',style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: Responsive.sp(4),
                      fontWeight: FontWeight.w300
                    ),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
