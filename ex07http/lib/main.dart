import 'package:ex07http/screen/ex_lifecycle.dart';
import 'package:ex07http/screen/loadingPage.dart';
import 'package:ex07http/screen/step_location.dart';
import 'package:ex07http/screen/step_weather.dart';
import 'package:ex07http/screen/weatherMain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingPage(),
    );
  }
}

