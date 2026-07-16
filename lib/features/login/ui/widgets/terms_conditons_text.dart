import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font11LightGreyNormal,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font11DarkBlueNormal,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font11LightGreyNormal.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font11DarkBlueNormal,
          ),
        ],
      ),
    );
  }
}
