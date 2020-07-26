import 'package:flutter/material.dart';

class Hoome extends StatefulWidget {
  @override
  HoomeState createState() => new HoomeState();
}

class HoomeState extends State<Hoome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Row(children: <Widget>[
        Column(children: <Widget>[
          Container(child:
          CircleAvatar(backgroundImage: new AssetImage('assets/images/edu.png'),
          )
          )
        ]  
        )
        
        ],)
    
      

    );
  }
}
    