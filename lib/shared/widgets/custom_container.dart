import 'package:expense_tracker_app/app_barrels.dart';

class CustomContainer extends StatelessWidget {
  final double? height, width;
  final Color? color;
  final BoxShape boxShape;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final DecorationImage? decorationImage;
  final Widget child;
  final BoxBorder? border;

  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.boxShape = BoxShape.rectangle,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.decorationImage,
    required this.child,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        shape: boxShape,
        boxShadow: boxShadow,
        gradient: gradient,
        image: decorationImage,
        border: border,
      ),
      child: child,
    );
  }
}
