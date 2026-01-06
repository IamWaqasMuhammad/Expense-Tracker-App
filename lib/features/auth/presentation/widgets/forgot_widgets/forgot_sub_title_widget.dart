import 'package:expense_tracker_app/app_barrels.dart';

class ForgotSubTitleWidget extends StatelessWidget {
  const ForgotSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        AppStringsAssets.forgetSubTitle,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: Responsive.sp(3),
        ),
        textAlign:TextAlign.start
    );
  }
}
