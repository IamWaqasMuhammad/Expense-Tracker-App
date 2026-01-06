import 'package:expense_tracker_app/app_barrels.dart';

class ForgotFormWidget extends StatelessWidget {
  const ForgotFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Form(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Email Label
        Text(
          AppStringsAssets.enterEmailAddress,
          style: Theme.of(context).textTheme.labelSmall!
              .copyWith(
            fontSize: Responsive.sp(4),
            fontWeight: FontWeight.w400,
            color: isDark
                ? AppColors.lightGreen
                : AppColors.voidColor,
          ),
        ),
        SizedBox(height: Responsive.hp(1)),

        /// Email Field
        CustomTextField(
          hintText: AppStringsAssets.emailHintText,
          textInputType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: Responsive.hp(3)),
        /// Reset Button
        Center(
          child: CustomButton(
            onTap: () {},
            height: Responsive.hp(7),
            width: Responsive.wp(60),
            color: AppColors.caribbeanGreen,
            borderRadius: 25,
            child: Center(
              child: Text(
                AppStringsAssets.restButtonText,
                style: Theme.of(context).textTheme.bodySmall!
                    .copyWith(
                  fontSize: Responsive.sp(4.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: Responsive.hp(4)),
        /// Or Login With

        /// Google And Facebook Buttons

      ],
    ),);
  }
}
