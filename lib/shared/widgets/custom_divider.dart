import '../../app_barrels.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final double width;
  final double? borderRadius;
  final Color? color;
  const CustomDivider({super.key, required this.height, required this.width, this.borderRadius, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color:color?? AppColors.lightGreen,
        borderRadius: BorderRadius.circular(borderRadius??4),
      ),
    );
  }
}
