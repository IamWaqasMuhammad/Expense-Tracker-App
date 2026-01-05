import '../../app_barrels.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool enabled;
  final InputBorder? enabledBorder;
  final InputBorder? focusBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;
  final Color? focusColor;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.textInputType,
    this.obscureText = false,
    this.textInputAction,
    this.hintText,
    this.hintStyle,
    this.enabled = true,
    this.enabledBorder,
    this.focusBorder,
    this.errorBorder,
    this.focusErrorBorder,
    this.focusColor,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: textInputType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      validator: validator,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.caribbeanGreen),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),
        focusedErrorBorder: focusErrorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
        focusColor: focusColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
