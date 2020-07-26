import 'package:flutter/material.dart';

class Requestpage extends StatefulWidget {
  @override
  RequestpageState createState() => new RequestpageState();
}

class RequestpageState extends State<Requestpage> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Add a Request',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
         
        
        ],

      ),
  body: Center(child:Column(mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text("Enter Name",textAlign: TextAlign.start,style: TextStyle(fontSize: 20),),
      TextField(decoration: InputDecoration(hintText: ''
      ),
      ),
      TextField(decoration: InputDecoration(hintText:'blood'
      ,)
      ),



    ],
    
  ),
  )
);

  }
}