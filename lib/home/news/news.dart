import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  NewsState createState() => new NewsState();
}

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('News',
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