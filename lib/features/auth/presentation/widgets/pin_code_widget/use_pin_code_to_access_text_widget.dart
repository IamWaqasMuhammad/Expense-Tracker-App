import 'package:expense_tracker_app/app_barrels.dart';

class UsePinCodeToAccessTextWidget extends StatelessWidget {
  const UsePinCodeToAccessTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Text(
        AppStringsAssets.usePinCodeToAccess,
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
