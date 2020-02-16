
import 'package:flutter/material.dart';
import 'package:rest_app/ui/screens/TextPage.dart';



class Destination {
  const Destination(this.index, this.title, this.icon, this.color );
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination(0, 'Home', Icons.home, Colors.teal ),
  Destination(1, 'About Us', Icons.info, Colors.cyan),
  Destination(2, 'Contact Us', Icons.chat, Colors.orange),
  Destination(3, 'F.A.Q', Icons.pages, Colors.blue)
];


const List<Destination>  socialDestination = <Destination>[
  Destination(0, 'Facebook', Icons.home, Colors.teal),
  Destination(1, 'Twitter', Icons.home, Colors.teal),
  Destination(2, 'Whats app', Icons.home, Colors.teal ),
  Destination(3 , 'Google pluse', Icons.home, Colors.teal ),
];