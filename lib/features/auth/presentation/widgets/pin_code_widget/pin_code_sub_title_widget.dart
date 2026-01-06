import 'package:expense_tracker_app/app_barrels.dart';

class PinCodeSubTitleWidget extends StatelessWidget {
  const PinCodeSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStringsAssets.pinCodeSubTitle,
      style: Theme.of(context).textTheme.bodyMedium!
          .copyWith(
        fontWeight: FontWeight.w400,
        fontSize: Responsive.sp(3),
      ),
      textAlign: TextAlign.center,
    );
  }
}
