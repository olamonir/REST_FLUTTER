import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/lang/applic.dart';
import 'package:rest_app/ui/screens/HomePage.dart';


void main() => runApp(new MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

    Function duringSplash = () {
    return 1 ;
  };
    Map<int, Widget> op = {1: HomePage(), 2: HomePage()};



class _MyAppState extends State<MyHomePage> {
  SpecificLocalizationDelegate _localeOverrideDelegate;


  @override
  void initState(){
    super.initState();
    _localeOverrideDelegate = new SpecificLocalizationDelegate(null);
    ///
    /// Let's save a pointer to this method, should the user wants to change its language
    /// We would then call: applic.onLocaleChanged(new Locale('en',''));
    /// 
    applic.onLocaleChanged = onLocaleChange;
    applic.onLocaleChanged(new Locale('en',''));

  }

  onLocaleChange(Locale locale){
    setState((){
      _localeOverrideDelegate = new SpecificLocalizationDelegate(locale);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       color: Color(0xFF020202),
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

      localizationsDelegates: [
        _localeOverrideDelegate,
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
       supportedLocales: [
          const Locale('en', ''),
          const Locale('ar', ''),
      ],
    );
  }
}
