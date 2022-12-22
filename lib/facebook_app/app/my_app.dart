import 'package:facebook_ui/core/config/palette.dart';
import 'package:facebook_ui/facebook_app/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyFacebookApp extends StatelessWidget {
  const MyFacebookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: const SplashScreen(),
    );
  }
}
