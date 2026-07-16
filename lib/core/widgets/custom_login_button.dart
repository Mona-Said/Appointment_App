import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class CustomLoginButton extends StatelessWidget {
  final Color? backgroundColor;
  final String buttonName;
  final TextStyle? buttonTextStyle;
  final VoidCallback function;

  const CustomLoginButton({
    super.key,
    this.backgroundColor,
    required this.buttonName,
    this.buttonTextStyle,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,

      child: Container(
        height: 52.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.mainBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: buttonTextStyle ?? TextStyles.font16WhiteSemiBold,
          ),
        ),
      ),
    );
  }
}
