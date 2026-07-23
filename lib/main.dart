import 'package:appointment_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'docdoc_app.dart';

void main() {
  setupGetIt();
  runApp(DocdocApp(appRouter: AppRouter()));
}
