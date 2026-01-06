import 'package:expense_tracker_app/app_barrels.dart';

class FingerPrintImageWidget extends StatelessWidget {
  const FingerPrintImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Image(
        image: AssetImage(AppImageAssets.fingerImage),
        height: Responsive.hp(25),
        width: Responsive.wp(50),
      ),
    );
  }
}
