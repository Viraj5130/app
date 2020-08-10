import 'package:app/constants.dart';
import 'package:app/home/medical/donate.dart';
import 'package:app/home/medical/request.dart';
import 'package:flutter/material.dart';
//import 'package:app/components/rounded_input_field.dart';
class Requestpage extends StatefulWidget {
  // String name;
 // Requestpage({ this.name})
  @override
  RequestpageState createState() => new RequestpageState();
}



class RequestpageState extends State<Requestpage> {
  String value;
  String phone;
  String blood;
 
  @override
  Widget build(BuildContext context) { Size size = MediaQuery.of(context).size;
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
  body:SingleChildScrollView(child:
  Background(child:
  
      
    
      Form(
      
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
     
              
              // SvgPicture.asset(
              //   "assets/icons/login.svg",
              //   height: size.height * 0.35,
              // ),
             SizedBox(height: 0.01),
                 Padding(
                padding: const EdgeInsets.only(top:20,left: 43,right: 43),
                child: TextFormField(onChanged:(text){value=text;},
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide:BorderSide(width:0,
                  style: BorderStyle.none)),
                  filled: true,hintText: "Your Name",labelText: 'Name'),
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 43,right: 43),
                 child: TextFormField(onChanged:(text){phone=text;},
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                   borderSide:BorderSide(width:0,
                  style: BorderStyle.none),),
                  filled: true,hintText: "Your Phone Number",labelText: "Phone Number"),
              ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                 child: TextFormField(onChanged:(text){blood=text;},
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                   borderSide:BorderSide(width:0,
                  style: BorderStyle.none),),
                  filled: true,hintText: "Required Blood Groop",labelText: "Blood Group"),
              ),
               ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.68,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color:kPrimaryColor,
          onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Donate(value : value,phone : phone,blood : blood),));},
          child: Text('Post Request',
            
            style: TextStyle(color:Colors.white),
          ),
        ),
      ),
    ),
             )
               
                
           
             
           
          
                
              
            ],
          ),
        ),
      
     )
   
      
  
   
  )  
  )
  
);

  }
}


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(child:Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 80,
            child: Image.asset(
              "assets/images/req.png",
              width: size.width * 0.70,
            ),
          ),
        
          child,
        ],
      ),
     ) );
  }
}
