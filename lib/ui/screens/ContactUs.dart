

import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:rest_app/generated/i18n.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/lang/applic.dart';


class ContactUs extends StatefulWidget{

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs> {
  GlobalKey<InnerDrawerState> innerDrawerKey;
  // ContactUs(this.innerDrawerKey);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();
  String nameError;
  String emailError;
  String messageError;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    // border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide:const  BorderSide(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1a8cb8)),
                      ),
                  hintText: Translations.of(context).text('name'),
                  fillColor: Colors.white,
                  filled: true,
                  errorText: nameError,
                  // prefixIcon: Icon(Icons.perm_identity)
                  )),
          SizedBox(
            height: 16,
          ),
          TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1a8cb8)),
                      ),
                  hintText: Translations.of(context).text('email'),
                  fillColor: Colors.white,
                  filled: true,
                  errorText: emailError,
                  // prefixIcon: Icon(Icons.email)
                  )),
          SizedBox(
            height: 16,
          ),
          TextFormField(
              controller: messageController,
              minLines: 7,
              maxLines: 10,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1a8cb8)),
                      ),
                hintText: Translations.of(context).text('message'),
                fillColor: Colors.white,
                filled: true,
                errorText: messageError,
                // prefixIcon: Icon(Icons.message),
              )),
          SizedBox(
            height: 30,
          ),
                  RaisedButton(
                    color:Color(0xFF1a8cb8),
                    onPressed: () {
                    if(nameController.text.isEmpty){
                      setState(() {
                        nameError = Translations.of(context).text('please_enter_name');
                          emailError = null;
                          messageError = null;
                      });
                    }else if(emailController.text.isEmpty){
                      setState(() {
                        emailError = null ;
                          emailError = Translations.of(context).text('please_enter_email');
                          messageError = null;
                      });
                    }else if(messageController.text.isEmpty){
                      setState(() {
                        messageError = null ;
                          messageError = null;
                          messageError = Translations.of(context).text('please_enter_message');
                      });
                    }else{
                      setState(() {
                          nameError = null;
                          emailError = null;
                          messageError = null;
                        });
                          _launchURL("Al_shammeri2013@hotmail.com", messageController.text, messageController.text, nameController.text);
                    }


                    },
                    padding: EdgeInsets.all(16),
                    child: Text(Translations.of(context).text('send'), style: TextStyle(color: Colors.white)),
                  ),
        ],
      ),

    );

      }






  void showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:Text(Translations.of(context).text('ok')),
                  )
            ],
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  "assets/images/done.png",
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 16,
                ),


                applic.currentLocale == 'ar'?   Directionality( 
                  textDirection: TextDirection.rtl,
                  child: Text(
                  "Send",                  
                  style:TextStyle(color: Colors.white) ,
                  textAlign: TextAlign.center,
                )
                ): Directionality( 
                  textDirection: TextDirection.ltr,
                  child: Text(
                  "Send",                  
                  style:TextStyle(color: Colors.white) ,
                  textAlign: TextAlign.center,
                )
                )
                
              ],
            ),
          );
        });
  }



    _launchURL(String toMailId, String subject, String body, String name) async {
    // var url = 'mailto:$toMailId?subject=$subject&body=$body';
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }

      // final Email email = Email(
      // body: body,
      // subject: subject,
      // recipients: [toMailId],
      // cc: ['cc@example.com'],
      // bcc: ['bcc@example.com'],
      // attachmentPath: '/path/to/attachment.zip',
      // isHTML: false,
    // );

      // await FlutterEmailSender.send(email);



       final MailOptions mailOptions = MailOptions(
      body: body ,
      subject: "R.E.S.T. Contact Us",
      recipients: [toMailId],
      isHTML: false,
      // bccRecipients: ['other@example.com'],
      // ccRecipients: ['third@example.com'],
      // attachments: [ 'path/to/image.png', ],
    );

    await FlutterMailer.send(mailOptions);
  }

}
