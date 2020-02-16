
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_app/ui/screens/ExpansionList.dart';
import 'package:rest_app/ui/screens/ListPage.dart';
import 'package:rest_app/ui/screens/TextPage.dart';
import 'package:rest_app/utils/Destination.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({ Key key, this.destination, this.onNavigation }) : super(key: key);

  final Destination destination;
  final VoidCallback onNavigation;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      observers: <NavigatorObserver>[
        ViewNavigatorObserver(widget.onNavigation),
      ],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch(settings.name) {
              case '/':
                return DropDownButtonPage();
              case '/list':
                return ListPage();
              case '/text':
                return TextPage(destination: widget.destination);
              case '/shareScreen':
                return  TextPage(destination: widget.destination);
            }
          },
        );
      },
    );
  }
}





class ViewNavigatorObserver extends NavigatorObserver {
  ViewNavigatorObserver(this.onNavigation);

  final VoidCallback onNavigation;

  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }
}
