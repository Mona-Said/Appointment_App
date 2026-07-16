import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/helpers/separator_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_form_field.dart';
import '../widgets/already_have_account.dart';
import '../widgets/terms_conditons_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscured = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 50.h,
              start: 30.w,
              end: 30.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                SeparatorHelper.vertical(10),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyNormal,
                ),
                SeparatorHelper.vertical(35),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomFormField(hintText: 'Email'),
                      SeparatorHelper.vertical(15),
                      CustomFormField(
                        hintText: 'Password',
                        obscured: isObscured,

                        suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscured = !isObscured;
                            });
                          },
                          child: Icon(
                            isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      SeparatorHelper.vertical(24),
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12BlueNormal,
                        ),
                      ),
                      SeparatorHelper.vertical(40),
                      CustomLoginButton(
                        buttonName: 'Login',
                        function: () {
                          context.pushNamed(Routes.homeScreen);
                        },
                      ),
                      SeparatorHelper.vertical(20),
                      TermsAndConditions(),
                      SeparatorHelper.vertical(40),
                      AlreadyHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
