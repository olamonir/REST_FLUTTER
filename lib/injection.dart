// import 'package:flutter_simple_dependency_injection/injector.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Injection {

//   static Injector injector;
//   static Future initInjection() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     injector = Injector.getInjector();
//     injector.map<SharedPreferences>((i)=> sharedPreferences , isSingleton: true);
//   }
// }