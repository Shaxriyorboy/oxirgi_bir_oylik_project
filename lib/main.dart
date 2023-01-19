import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:oxirgi_bir_oylik_project/pages/home_page.dart';
import 'package:oxirgi_bir_oylik_project/pages/symmetric_page.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  runApp(const MyApp());
  // await runZonedGuarded(() async {
  //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  //   runApp(const MyApp());
  // }, (error, stackTrace) {
  //   // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
