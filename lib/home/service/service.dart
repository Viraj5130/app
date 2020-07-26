import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  @override
  ServiceState createState() => new ServiceState();
}

class ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Service',
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

      