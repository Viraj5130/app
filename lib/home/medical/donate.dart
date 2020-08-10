import 'package:app/home/medical/request.dart';
import 'package:app/home/medical/requestpage.dart';
import 'package:flutter/material.dart';
import 'package:app/home/medical/blood_thumbnail.dart';

// ignore: must_be_immutable
class Donate extends StatefulWidget {
    String receiverName;
   String receiverAge;
   String receiverSex;
   String receiverDistance;
   String postedAtTime;
  String value;
  String phone;
  String blood;
  String age;
      String requirement;
   String bloodGroup;
  Donate({Key key,@required this.value,@required this.phone,@required this.blood,this.receiverName, this.receiverAge, this.receiverSex, this.receiverDistance, this.postedAtTime,this.requirement, this.bloodGroup,this.age}):super(key:key);

  @override
  DonateState createState() => new DonateState(value,phone,blood,receiverName,receiverAge,receiverSex,receiverDistance,postedAtTime,requirement, bloodGroup,age);
}

class DonateState extends State<Donate> {
  String value;
   String receiverName;
   String receiverAge;
   String receiverSex;
   String receiverDistance;
   String postedAtTime;
   String requirement;
   String bloodGroup;
   String phone;
   String blood;
   String age;
  DonateState(this.value,this.phone,this.blood,this.receiverName, this.receiverAge, this.receiverSex, this.receiverDistance, this.postedAtTime,this.requirement, this.bloodGroup,this.age);
  @override
  Widget build(BuildContext context) {
return Scaffold( appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Donate',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
         
        
        ],

      ),body:Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      decoration: new BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.white54,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child:  Stack(
      children: <Widget>[
        Container(
          height: 120.0,
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(requirement != null ? requirement : "URGENT", style: TextStyle(color: Colors.white, )),
                ),
              ),
              Expanded(
                flex: 3,
                child:  Container(
                  alignment: Alignment.center,
                  color: Colors.black87,
                  child: Text(bloodGroup != null ? bloodGroup : "$blood", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          )
        ),
      ],
    ),
            //BloodGroupThumbnailWidget(),
          ),
       Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  receiverName != null ? receiverName : "$value",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: Text( age  = receiverAge != null ? receiverAge : '$phone',
                  
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  overflow: TextOverflow.ellipsis,
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: Text( age  = receiverAge != null ? receiverAge : '$phone',
                  
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  overflow: TextOverflow.ellipsis,
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left:250,),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  Icon(Icons.delete)
                ],),
              )
            ]
       )]
      ),
      
      )
      
);

  }
}

 String getSecondlineDesc(){
   // String receiverName;
   String receiverAge;
   String receiverSex;
   String receiverDistance;
   String postedAtTime;
   String phone;
  
// DonateState(this.value,this.receiverName, this.receiverAge, this.receiverSex, this.receiverDistance, this.postedAtTime,);
   // String age  = receiverAge != null ? receiverAge : '$phone';
    String sex  = receiverSex != null ? receiverSex : 'Male';
    String distance  = receiverDistance != null ? receiverDistance : '20KM';
    String time  = postedAtTime != null ? postedAtTime : '22Hrs';
    return ' * $sex * $distance * $time';
  }


