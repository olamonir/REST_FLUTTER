import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/lang/applic.dart';

class Privacy  extends StatelessWidget{
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

      body: Column (children: <Widget>[
             Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                           margin: EdgeInsets.only(top : 30, bottom: 10),
                                           child:  Text(Translations.of(context).text('privacy' ) , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 18,)),
                                          )
                                        ]
                      ),



                      Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                           margin: EdgeInsets.only(top : 30, bottom: 10),
                                           child: Image.asset('lib/assets/images/instructionimg.png', height: 70 , width: 70,),

                                          )
                                        ]
                      ),

             Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          
                                          Center(
                                           child: Container(
                                            width: 300.0,
                                           margin: EdgeInsets.only(top : 30, bottom: 10 , right : 20 ,left: 30),
                                           child:  Text(Translations.of(context).text('privacy_content' ) , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,)),
                                          )
                                          )
                                          
                                        ]
                      ),




        // Text(Translations.of(context).text('instructions_content' ))
      ],),



    );

  }



}