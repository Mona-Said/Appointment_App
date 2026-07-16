import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class CustomFormField extends StatelessWidget {
  final EdgeInsetsDirectional? contentPadding;
  final String hintText;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Color? enabledBorder;
  final Color? defaultBorder;
  final bool? obscured;
  final Widget? suffix;

  const CustomFormField({
    this.contentPadding,
    this.backgroundColor,
    this.textStyle,
    this.enabledBorder,
    this.defaultBorder,
    this.obscured,
    this.suffix,
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscured ?? false,
      cursorColor: AppColors.mainBlue,
      style: TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 17.h),
        hintText: hintText,
        hintStyle: textStyle ?? TextStyles.font14LightGrey2Medium,
        fillColor: backgroundColor ?? AppColors.lightGrey,
        suffixIcon: suffix,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: enabledBorder ?? AppColors.mainBlue,
            width: 1.4,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: defaultBorder ?? AppColors.greyBorder,
            width: 1.4,
          ),
        ),
      ),
    );
  }
}
