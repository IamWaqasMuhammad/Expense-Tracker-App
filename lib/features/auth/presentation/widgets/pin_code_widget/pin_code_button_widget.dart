import 'package:expense_tracker_app/app_barrels.dart';

class PinCodeButtonWidget extends StatelessWidget {
  const PinCodeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

        },
        height: Responsive.hp(7),
        width: Responsive.wp(60),
        color: AppColors.caribbeanGreen,
        borderRadius: 25,
        child: Center(
          child: Text(
            AppStringsAssets.pinCodeButton,
            style: Theme.of(context).textTheme.bodySmall!
                .copyWith(
              fontSize: Responsive.sp(4.5),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
