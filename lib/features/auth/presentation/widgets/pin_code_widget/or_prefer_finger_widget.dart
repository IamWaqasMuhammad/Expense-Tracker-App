import 'package:expense_tracker_app/app_barrels.dart';

class OrPreferFingerWidget extends StatelessWidget {
  const OrPreferFingerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Or Prefer Finger Print
        Text(
          AppStringsAssets.orPreferFinger,
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
        ///Finger print button
        CustomButton(
          height: Responsive.hp(5),
          width: Responsive.wp(30),
          borderRadius: 20,
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            AppStringsAssets.fingerPrintButton,
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
    );
  }
}
