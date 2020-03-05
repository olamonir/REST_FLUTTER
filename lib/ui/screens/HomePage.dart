import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/lang/applic.dart';
import 'package:rest_app/ui/screens/AboutUs.dart';
import 'package:rest_app/ui/screens/ContactUs.dart';
import 'package:rest_app/ui/screens/ExpansionList.dart';
import 'package:rest_app/ui/screens/ShareScreen.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {


  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


 // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color(0xFF1a8cb8),
        title: Image.asset('lib/assets/images/logorestapp.png' , fit: BoxFit.contain,
                  height: 30,),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Image.asset('lib/assets/images/change_lang.png' , height: 24 , width: 24,),  onPressed: () {
            if(applic.currentLocale == 'en'){
            applic.onLocaleChanged(new Locale('ar',''));
            applic.currentLocale= 'ar';
            }else if(applic.currentLocale == 'ar'){
            applic.onLocaleChanged(new Locale('en',''));
            applic.currentLocale= 'en';

            }

                // translationsBloc.setNewLanguage("fr");
          },)
        ],
      ),

      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[DropDownButtonPage(), AboutUs(), ContactUs(),   ShareScreen()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Color(0xFFFFFFFF),
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(

          indicatorWeight: 4.0,
          labelColor: Colors.black,
          indicatorColor: Color(0xFF1a8cb8),

          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Image.asset('lib/assets/images/homecolored.png' , height: 20 , width: 20),
              child: Text(Translations.of(context).text('home'), style: TextStyle(
                                                  color: Color(0xFF1a8cb8),
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.2,
                                                  fontSize: 13,)),
            ),
            Tab(
              icon: Image.asset('lib/assets/images/aboutuscolored.png' ,  height: 20 , width: 20),
              // text:"About Us"
              child: Text(Translations.of(context).text('about_us'), style: TextStyle(
                                                  color: Color(0xFF1a8cb8),
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.2,
                                                  fontSize: 13,)),
            ),
            Tab(
              icon: Image.asset('lib/assets/images/contactuscolored.png' ,  height: 20 , width: 20),
              child: Text(Translations.of(context).text('contact_us'), style: TextStyle(
                                                  color: Color(0xFF1a8cb8),
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.2,
                                                  fontSize: 13,)),
            ),
            Tab(
              icon: Image.asset('lib/assets/images/shareappcolored.png' ,  height: 20 , width: 20),
              child: Text(Translations.of(context).text('share_app'), style: TextStyle(
                                                  color: Color(0xFF1a8cb8),
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.2,
                                                  fontSize: 13,)),
            ),
          ],
          // setup the controller
          controller: controller,
        ),


      ),

    );
  }

}