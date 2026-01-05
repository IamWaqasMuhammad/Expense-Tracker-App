import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
    this.height = 50,
    this.width = double.infinity,
    this.color = Colors.blue,
    this.borderRadius = 12,
    this.isLoading = false,
  });

  // Cyprus green
  static const Color cyprusGreen = Color(0xFF00755E);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        splashColor: cyprusGreen.withOpacity(0.4),
        highlightColor: cyprusGreen.withOpacity(0.2),
        onTap: isLoading ? null : onTap,
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            )
                : child,
          ),
        ),
      ),
    );
  }
}
