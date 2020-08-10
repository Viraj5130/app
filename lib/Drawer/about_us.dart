import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  AboutusState createState() => new AboutusState();
}

class AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold( appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('About us',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
         
        
        ],
    )
       );
  }
}