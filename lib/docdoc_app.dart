import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocdocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocdocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingScreen,

        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
