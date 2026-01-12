import '../../../../../app_barrels.dart';

class BalanceInfoColumn extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final Color? valueColor;

  const BalanceInfoColumn({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: Responsive.hp(2),
              width: Responsive.wp(4),
              child: Image.asset(
                icon,
                fit: BoxFit.contain,
                color:
                isDark ? AppColors.lightGreen : AppColors.voidColor,
              ),
            ),
            SizedBox(width: Responsive.wp(1.2)),
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        SizedBox(height: Responsive.hp(0.8)),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: Responsive.sp(6.5),
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: valueColor ??
                (isDark
                    ? AppColors.lightGreen
                    : AppColors.voidColor),
          ),
        ),
      ],
    );
  }
}
