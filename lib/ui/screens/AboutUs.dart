


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs  extends StatelessWidget{
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

      body: Center(
        child: Container(
          margin: EdgeInsets.only(right : 30 ,left: 30),
          child: Text('poiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjkpoiuytrdfghjk',
                      style: TextStyle(
                                                                  color: Colors.grey,
                                                                  // fontWeight: FontWeight.w800,
                                                                  fontFamily: 'Roboto',
                                                                  letterSpacing: 0.5,
                                                                  fontSize: 16,)
              ),
        )



      )
        );


  }
}

