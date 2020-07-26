import 'package:flutter/material.dart';

class Matrimonial extends StatefulWidget {
  @override
  MatrimonialState createState() => new MatrimonialState();
}

class MatrimonialState extends State<Matrimonial> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Matrimonial',
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

      