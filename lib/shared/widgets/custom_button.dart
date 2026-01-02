import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_app/core/constants/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double? height, width, borderWidth;
  final VoidCallback? onTap;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Gradient? gradient;
  final BoxShape boxShape;
  final List<BoxShadow>? boxShadow;
  final Widget? child;

  const CustomButton({
    super.key,
    this.height,
    this.width,
    this.borderWidth = 1.0,
    required this.onTap,
    this.color,
    this.borderRadius,
    this.gradient,
    this.boxShape = BoxShape.rectangle,
    this.boxShadow,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.caribbeanGreen.withOpacity(0.25),
        highlightColor: AppColors.caribbeanGreen.withOpacity(0.15),
        borderRadius: borderRadius as BorderRadius?,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            gradient: gradient,
            shape: boxShape,
            borderRadius: boxShape == BoxShape.rectangle ? borderRadius : null,
            boxShadow: boxShadow,
          ),
          child: child,
        ),
      ),
    );
  }
}
