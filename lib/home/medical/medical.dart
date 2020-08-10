import 'package:app/home/medical/donate.dart';
import 'package:app/home/medical/request.dart';
import 'package:app/home/medical/requestpage.dart';
import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  @override
  MedicalState createState() => new MedicalState();
}

class MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {SingleChildScrollView();
return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Medical',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
         
        
        ],

      ),
  body: Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
      Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Padding(
            padding: const EdgeInsets.all(8.0),
            child:InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Donate()));},child: Column(children:<Widget>[
              Container(
                 child: CircleAvatar(backgroundImage: new AssetImage('assets/images/don.png'),radius: 55,
              )
               ), Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Donate",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
              ,),
               ),
             Text("દાન કરો",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
              ,),
               ]
               ),
          ) 
           ) ],
             
        ),
      ),
       Container(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child:InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Requestpage()));},child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                 child: CircleAvatar(backgroundImage: new AssetImage('assets/images/rec.jpg'),radius: 55,
              )
               ) , Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Request",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
              ,),
               ),
             Text("વિનંતી",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
              ,),],
          ),
        ),
      )

     ) ],)
  ),


);
  }
  }