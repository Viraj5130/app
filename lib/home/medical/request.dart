import 'package:app/home/medical/requestpage.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  RequestState createState() => new RequestState();
}

class RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
return Scaffold( appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Request',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
         
        
        ],

      ),
  
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Requestpage()));
      },
      backgroundColor: Colors.purpleAccent,
      child: Icon(Icons.add),
      ),
  
);

  }
}