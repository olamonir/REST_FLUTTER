import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ShareScreen  extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Color(0xFF1a8cb8),
        title: Image.asset('lib/assets/images/logorestapp.png' , fit: BoxFit.contain,
                  height: 30,),
        centerTitle: true,
      ),

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
                                    new Container(
                                      color: Colors.white,
                                    margin: const EdgeInsets.only(top : 30,left: 30.0, right: 40.0),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(bottom: 10),
                                            child: Image.asset('lib/assets/images/facebook.png', height: 55 , width: 55,),
                                            ),
                                            Text("Facebook" ,  style: TextStyle(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.w800,
                                                  fontFamily: 'Roboto',
                                                  letterSpacing: 0.5,
                                                  fontSize: 16,))
                                          ],
                                        ),
                                      ),
                                    ),
                                    new Container(
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
                                    new Container(
                                    color: Colors.white,
                                        margin: const EdgeInsets.only(right: 30.0),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                            margin: EdgeInsets.only(top : 30, bottom: 10),
                                            child: Image.asset('lib/assets/images/whatsapp.png', height: 55 , width: 55,),
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
                                  ]
                    ),

                    new  Container(
                      color: Colors.white,
                          // margin: const EdgeInsets.only(right: 30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                margin: EdgeInsets.only( left :35 , right : 35 ,top : 30, bottom: 10),
                                child: Image.asset('lib/assets/images/googleplus.png', height: 55 , width: 55,),
                                ),
                                Text("Google plus" , style: TextStyle(
                                      color: Colors.grey,
                                      // fontWeight: FontWeight.w800,
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.5,
                                      fontSize: 16,))
                              ],
                            ),
                          // alignment: Alignment(-1.0, 1.0),
                        ),
                    ],
                  ),

// )

        // ),

          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () => {launchURL('https://www.tocaan.com/')},
                  child: Wrap(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text( 'Developed by' , style: TextStyle(
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