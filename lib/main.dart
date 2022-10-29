// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/social.dart';
import 'package:flutter_application/ui/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SafeArea(
        child: Scaffold(
          body: Social(),
        ),
      ),
    );
  }
}
