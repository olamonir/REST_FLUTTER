

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';


class ContactUs extends StatelessWidget {
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
      appBar: AppBar(
        backgroundColor: Color(0xFF1a8cb8),
        title: Image.asset('lib/assets/images/logorestapp.png' , fit: BoxFit.contain,
                  height: 30,),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80)),
                  hintText: 'Name',
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80)),
                  hintText: 'Email',
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                hintText: 'Message',
                fillColor: Colors.white,
                filled: true,
                errorText: messageError,
                // prefixIcon: Icon(Icons.message),
              )),
          SizedBox(
            height: 30,
          ),
          // StreamBuilder<LoadingState>(
              // stream: userBloc.loadingStream,
              // builder: (context, snapshot) {
              //   if (snapshot.data != null && snapshot.data.loading) {
              //     return Center(child: CircularProgressIndicator());
              //   } else {
                  RaisedButton(
                    color:Color(0xFF1a8cb8),
                    onPressed: () {
                      _launchURL('ola.monir7@gmail.com', nameController.text, messageController.text);
                    showSuccessDialog(context);

                      // if (nameController.text.isEmpty) {
                      //   setState(() {
                      //     nameError = S.of(context).fill_field;
                      //     emailError = null;
                      //     messageError = null;
                      //   });
                      // } else if (emailController.text.isEmpty) {
                      //   setState(() {
                      //     nameError = null;
                      //     emailError = S.of(context).fill_field;
                      //     messageError = null;
                      //   });
                      // } else if (messageController.text.isEmpty) {
                      //   setState(() {
                      //     nameError = null;
                      //     emailError = null;
                      //     messageError = S.of(context).fill_field;
                      //   });
                      // } else {
                      //   setState(() {
                      //     nameError = null;
                      //     emailError = null;
                      //     messageError = null;
                      //   });
                        // userBloc
                        //     .contactUs(nameController.text,
                        //         emailController.text, messageController.text)
                        //     .then((success) {
                        //   if (success) {
                        //     _showSuccessDialog(context);
                        //   } else {
                        //     Scaffold.of(context).showSnackBar(SnackBar(
                        //       content: Text('S.of(context).error_try_again'),
                        //     ));
                        //   }
                        // }

                        // );
                      // }

                    },
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(16),
                    // color: Theme.of(context).accentColor,
                    child: Text('S.of(context).send'),
                  ),
                // }
              // })
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
                    // baseBloc.pageSink.add(Page.HOME);
                  },
                  child: Text("Ok")
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
                Text(
                  "S.of(context).message_send_content",
                  style: Theme.of(context).textTheme.subtitle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        });
  }



    _launchURL(String toMailId, String subject, String body) async {
    // var url = 'mailto:$toMailId?subject=$subject&body=$body';
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }

      final Email email = Email(
      body: body,
      subject: subject,
      recipients: [toMailId],
      // cc: ['cc@example.com'],
      // bcc: ['bcc@example.com'],
      // attachmentPath: '/path/to/attachment.zip',
      isHTML: false,
    );

      await FlutterEmailSender.send(email);
  }

}
