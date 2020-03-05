import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/ui/screens/InstructionsScreen.dart';
import 'package:rest_app/ui/screens/Privacy.dart';
import 'package:url_launcher/url_launcher.dart';


class ShareScreen  extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,


    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children :[
            Column(
                  mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                  //     new InkWell(
                                  //        onTap:() => {
                                  //      FlutterShareMe().shareToFacebook( msg: "R.E.S.T" , url: 'https://www.facebook.com/' )
                                  //       },
                                  //   child: Container(
                                  //     color: Colors.white,
                                  //   margin: const EdgeInsets.only(top : 30,left: 30.0, right: 40.0),
                                  //     child: Center(
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.min,
                                  //         children: <Widget>[
                                  //           Container(
                                  //             margin: EdgeInsets.only(bottom: 10),
                                  //           child: Image.asset('lib/assets/images/facebook.png', height: 55 , width: 55,),
                                  //           ),
                                  //           Text("Facebook" ,  style: TextStyle(
                                  //                 color: Colors.grey,
                                  //                 // fontWeight: FontWeight.w800,
                                  //                 fontFamily: 'Roboto',
                                  //                 letterSpacing: 0.5,
                                  //                 fontSize: 16,))
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ),

                                  // ),
                                    new InkWell(
                                      onTap:() => {
                                       FlutterShareMe().shareToTwitter( msg: "R.E.S.T",url: 'https://twitter.com/home' )
                                        },
                                      child: Container(
                                    color: Colors.white,
                                      margin: const EdgeInsets.only(right: 40.0),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                            margin: EdgeInsets.only(top : 30 ,bottom: 10),
                                            child : Image.asset('lib/assets/images/twitter.png', height: 55 , width: 55,),
                                            ),
                                            Text("Twitter"  , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,))
                                          ],
                                        ),
                                        
                                      ),
                                      
                                    ),
                                    ),
                                       new InkWell(
                                         onTap:() => {
                                      //  FlutterShareMe().shareToWhatsApp( base64Image: "base64Image", msg: "R.E.S.T")

                                       FlutterShareMe().shareToSystem(msg: "R.R.S.T"),
                                          // if (FlutterShareMe().shareToSystem(msg: "msg") == 'success') {
                                          //   print('navigate success')
                                          // }
                                        },
                                    child: Container(
                                    color: Colors.white,
                                        margin: const EdgeInsets.only(right: 30.0),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                            margin: EdgeInsets.only(top : 30, bottom: 10),
                                            child: Image.asset('lib/assets/images/shareapp.png', height: 55 , width: 55,),
                                            ),
                                            Text("Whats app" , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,))
                                          ],
                                        ),
                                      ),
                                    ),
                                      )
                                  ]
                    ),



                    // new  Container(
                    //   color: Colors.white,
                    //       // margin: const EdgeInsets.only(right: 30.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //           // mainAxisSize: MainAxisSize.max,
                    //           children: <Widget>[
                    //             Container(
                    //             margin: EdgeInsets.only( left :35 , right : 35 ,top : 30, bottom: 10),
                    //             child: Image.asset('lib/assets/images/googleplus.png', height: 55 , width: 55,),
                    //             ),
                    //             Text("Google plus" , style: TextStyle(
                    //                   color: Colors.grey,
                    //                   // fontWeight: FontWeight.w800,
                    //                   fontFamily: 'Roboto',
                    //                   letterSpacing: 0.5,
                    //                   fontSize: 16,))
                    //           ],
                    //         ),
                    //       // alignment: Alignment(-1.0, 1.0),
                    //     ),
                    ],
                  ),

// )

        // ),

          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () => {Navigator.push(context,  MaterialPageRoute(builder: (context) => Instructions()),)},
                  child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                                            Container(
                                            margin: EdgeInsets.only(top : 30, bottom: 10),
                                            child: Text(Translations.of(context).text('instructions' ) , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,)),
                                            ),
                                          ],

                  )

                ),
                              Container(
                                height: 1,
                                width: double.maxFinite,
                                color: Colors.grey,
                                margin: EdgeInsets.only(left : 70, right: 70),
                              ),

                  MaterialButton(
                  onPressed: () => {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Privacy()),
                  )
                  },
                  child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                                            Container(
                                            margin: EdgeInsets.only(top : 30, bottom: 10),
                                            child: Text(Translations.of(context).text('privacy' ) , style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,)),
                                            ),
                                          ],

                  )

                ),
                  Container(
                                height: 1,
                                width: double.maxFinite,
                                color: Colors.grey,
                                margin: EdgeInsets.only(left : 70, right: 70 , bottom :50),
                              ),

                MaterialButton(
                  onPressed: () => {launchURL('https://www.tocaan.com/')},
                  child: Wrap(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text( Translations.of(context).text('developed_by') , style: TextStyle(
                                                color: Colors.grey,
                                                // fontWeight: FontWeight.w800,
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.5,
                                                fontSize: 16,)),
                      ]
                    ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text( 'www.tocaan.com' , style: TextStyle(
                                                color: Colors.grey,
                                                // fontWeight: FontWeight.w800,
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.5,
                                                fontSize: 16,)),
                      ]
                    ),


                  ],)

                                  ),
                                ],
                              )
                        ]
                      )
                      );
                    }
                  }



  launchURL(String url) async{
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
}