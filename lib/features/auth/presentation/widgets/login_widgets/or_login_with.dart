import '../../../../../app_barrels.dart';

class OrLoginWithText extends StatelessWidget {
  const OrLoginWithText({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
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
      ],
    );
  }
}
