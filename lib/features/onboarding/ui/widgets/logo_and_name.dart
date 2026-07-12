import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndAppName extends StatelessWidget {
  const LogoAndAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/app_logo.svg'),
        SizedBox(width: 8.0.w),
        Text('DocDoc', style: TextStyles.font24Black700Weight),
      ],
    );
  }
}
