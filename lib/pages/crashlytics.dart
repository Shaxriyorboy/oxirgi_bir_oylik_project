import 'package:flutter/material.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class Crashlytics extends StatefulWidget {
  const Crashlytics({Key? key}) : super(key: key);

  @override
  State<Crashlytics> createState() => _CrashlyticsState();
}

class _CrashlyticsState extends State<Crashlytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){

          },
        ),
      ),
    );
  }
}
