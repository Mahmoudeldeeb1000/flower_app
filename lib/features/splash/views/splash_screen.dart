import 'package:flower_app/core/utils/app_images.dart';
import 'package:flower_app/features/onbording/views/onbording_screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    super.initState();
    Future.delayed(Duration
      (
      seconds: 3
    ),
      () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
        return OnbordingScreen();

      }));

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppImages.splashImages,
       height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover),


    );
  }
}
