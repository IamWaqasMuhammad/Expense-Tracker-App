import 'package:expense_tracker_app/app_barrels.dart';

class UseFingerToAccessTextWidget extends StatelessWidget {
  const UseFingerToAccessTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Text(
        AppStringsAssets.useFingerToAccess,
        style: Theme.of(context).textTheme.titleLarge!
            .copyWith(
          color: isDark
              ? AppColors.lightGreen
              : AppColors.voidColor,
          fontSize: Responsive.sp(5),
        ),
      ),
    );
  }
}
