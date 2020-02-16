
import 'package:animated_splash/animated_splash.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:rest_app/ui/screens/HomePage.dart';
import 'package:rest_app/utils/localization_delegate.dart';


void main() {

    Function duringSplash = () {
    return 1 ;
  };
    Map<int, Widget> op = {1: HomePage(), 2: HomePage()};
  SpecifiedLocalizationDelegate _localeOverrideDelegate;

  // runApp(MaterialApp(home: HomePage()));

  runApp(MaterialApp(
    color: Color(0xFF1a8cb8),
    home: CustomSplash(
      backGroundColor: Color(0xFF1a8cb8),
      imagePath: 'lib/assets/images/logorestapp.png',
      home: HomePage(),
      logoSize: 100,
      animationEffect: 'zoom-in',
      customFunction: duringSplash,
      duration: 3000,
      // type: AnimatedSplashType.BackgroundProcess,
      outputAndHome: op,
    ),
  ));



}
