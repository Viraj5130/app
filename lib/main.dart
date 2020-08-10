
//import 'dart:html';

//import 'dart:html';

import 'package:app/Screens/Welcome/welcome_screen.dart';
import 'package:app/constants.dart';

//import 'package:app/profile_list_item.dart';
import 'package:flutter/material.dart';
//import 'package:app/homepage.dart';


void main() => runApp(MaterialApp(home: Home()));


class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kanam Rabari',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
