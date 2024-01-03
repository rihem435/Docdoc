import 'package:app/core/di/dependency_injection.dart';
import 'package:app/core/routing/app_router.dart';
import 'package:app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

