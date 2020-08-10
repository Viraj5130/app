import 'package:app/home/medical/requestpage.dart';
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
   ),
   body: Column(children:<Widget>[
     
            Text(
              "Signup",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
     
      SizedBox(height: 0.01),
                 Padding(
                padding: const EdgeInsets.only(top:20,left: 43,right: 43),
                child: TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide:BorderSide(width:0,
                  style: BorderStyle.none)),
                  filled: true,hintText: "Your Email",),
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 43,right: 43),
                 child: TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                   borderSide:BorderSide(width:0,
                  style: BorderStyle.none),),
                  filled: true,hintText: "Your Name",),
              ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                 child: TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                   borderSide:BorderSide(width:0,
                  style: BorderStyle.none),),
                  filled: true,hintText: "Your Phone Number",),
              ),
     ),])
);
  }
}

      