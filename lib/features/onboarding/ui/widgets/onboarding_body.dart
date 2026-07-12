import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/background.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: AlignmentDirectional.bottomCenter,
              end: AlignmentDirectional.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding.png'),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
