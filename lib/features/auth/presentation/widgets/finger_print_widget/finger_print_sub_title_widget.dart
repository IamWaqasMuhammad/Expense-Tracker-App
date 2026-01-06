import 'package:expense_tracker_app/app_barrels.dart';

class FingerPrintSubTitleWidget extends StatelessWidget {
  const FingerPrintSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStringsAssets.fingerPrintSubTitle,
      style: Theme.of(context).textTheme.bodyMedium!
          .copyWith(
        fontWeight: FontWeight.w400,
        fontSize: Responsive.sp(3),
      ),
      textAlign: TextAlign.center,
    );
  }
}
