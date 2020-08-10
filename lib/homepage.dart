import 'package:app/Drawer/about_us.dart';
import 'package:app/Screens/Login/login_screen.dart';
import 'package:app/bottombar.dart';
import 'package:app/home/directory/directory.dart';
import 'package:app/home/education/education.dart';
import 'package:app/home/matrimonial/matrimonial.dart';
import 'package:app/home/medical/medical.dart';
import 'package:app/home/news/news.dart';
import 'package:app/home/profile/profile.dart';
import 'package:app/home/service/service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => new HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
     // backgroundColor: Color(0xff392850),
     resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
       // leading: IconButton(icon: Icon(Icons.navigation), onPressed: null),
       elevation: 0.0,
       // centerTitle: true,
      
        title: Text('Home',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
               color: Colors.black)),
        actions: <Widget>[
          
          
         
        
        ],

      ),
      drawer: new Drawer(
      
        child: ListView(
          children: <Widget>[DrawerHeader(
            
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Colors.deepPurple,
              Colors.purpleAccent
            ])
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Positioned(
            width: 400.0,
          
            top: MediaQuery.of(context).size.height / 10,
            child: Row(
              children: <Widget>[
                Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
               // SizedBox(height: 50.0),
               
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Tom Cruise',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
               Container(
                 
               )
               
                   
              ],
              
            ))
              //  Padding(padding: EdgeInsets.all(0.0),child: Text('Username',style: TextStyle(color: Colors.black,fontSize:22),),)
              ],
              
            ),
          ),
          ),
            Custom(Icons.person,'Profile',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));}),
            Custom(Icons.settings,'Settings', ()=>(){}),
            
            Custom(Icons.info, 'About us', (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Aboutus()));}),
            Custom(Icons.exit_to_app,'Logout', (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}),
          ],
        )
      ),
      
         body:Container(//color: Colors.blueAccent,
           child: Column(
        children: <Widget>[
          
      
       
       
        
        Container(//color: Colors.blueGrey,
         // child:Padding(
           // padding: const EdgeInsets.only(top:20,left:50),
            child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20,left:60),
                
                child:InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Education()));},child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(
             //color: Colors.brown,
           //   child:
           // Padding(
          //    padding: const EdgeInsets.all(8),
                
                child: CircleAvatar(backgroundImage: new AssetImage('assets/images/edu.png'),radius: 55,
             
                
                ),
          //  )
            ),
            Text("Education",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ,),
           Text("શિક્ષિત",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ,),
              ]  
                  )  ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:20,left:80),
              child:InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Medical()));},child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(//color: Colors.brown,
       // child:
    //  Padding(
     //   padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: new AssetImage('assets/images/medical.png'),radius: 55,
                
                ),
    //  )
              ),
               Text("Medical",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)),Text("તબીબી",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600),
              ),
        ]  
               ) ),
            ),
            
              
              
            ],),
        // )
        ),
         Container(//color: Colors.blueGrey,
       //  child:Padding(
           // padding: const EdgeInsets.only(top:12,left:50),
            child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20,left:60),
                child:InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Directory()));},child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(//color: Colors.brown,
       // child:
     // Padding(
      //  padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(backgroundImage: new AssetImage('assets/images/contact.png'),radius: 55,
                
                ),
   //   )
            ),Text("Directory",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)),Text("ડિરેક્ટરી",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ),
        ]  
        
                  )  ),
              ),
              Padding(
                 padding: const EdgeInsets.only(top:20,left:80),
                 child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Matrimonial()));},child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(//color: Colors.brown,
              //child:
           // Padding(
            //  padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: new AssetImage('assets/images/mrg.png'),radius: 55,
            //  child: Text("Education",style: TextStyle(fontFamily: "Varela",fontSize: 20,color: Colors.black),),
              
              ),
          //  )
          
            ),Text("Matrimonial",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)),Text("વૈવાહિક",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ),
        ]  
        
                   )  ),
              
              ),
              
              
            ],),
       //   )
        ),
         Container(//color: Colors.blueGrey,
         // child:Padding(
         //   padding: const EdgeInsets.only(top:20,left:45),
            child: Row(children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.only(top:20,left:60),
                child:InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>News()));},child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(//color: Colors.brown,
                //child:
            //Padding(
                //padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: new AssetImage('assets/images/news.png'),radius: 55,
                
                ),
           // )
            ),Text("News",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)),Text("સમાચાર",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ),
        ]  
                  )  ),
              ),
              
              Padding(
                 padding: const EdgeInsets.only(top:20,left:80),
                 child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Service()));},child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(//color: Colors.brown,
              //child:
           // Padding(
             // padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: new AssetImage('assets/images/ser.png'),radius: 55,
              
              ),
           // )
            ),Text("Service",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)),Text("સેવા",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600)
            ),
            
            
        ]  
        
                  ) ),
              ),
              
              
            ],),
        //  )
        )
        
         // SizedBox(
           // height: 20,
        //  ),
         // Padding(
           // padding: EdgeInsets.only(left: 16, right: 16),
            //child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
             // children: <Widget>[
            //    Column(
               //   crossAxisAlignment: CrossAxisAlignment.start,
                  
              //  ),
                //  ],
              //  ),
         // ),
             // GridDashboard()
              //Hoome()
              ],
            ),
         ),
    
         
         
    
        
          
   // body: Column(
     
       // children: <Widget>[
       //    new Expanded(
     // child: GridView.count(
       
       // crossAxisCount: 2,
     
      
       
     // ),
   // ),
        //  IconButton(icon: Icon(Icons.info), iconSize: 100, onPressed: () {
          
       // }),
        
        //  IconButton(icon: Icon(Icons.local_mall),  iconSize: 100, onPressed: () {
         
       // }),
        //  IconButton(icon: Icon(Icons.bookmark),  iconSize: 100, onPressed: () {
         
       // }),
      //    IconButton(icon: Icon(Icons.home), iconSize: 100, onPressed: () {
          
        //}),
      //],
   // ),
          
         

  
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
      },
      backgroundColor: Colors.purpleAccent,
      child: Icon(Icons.person),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
    
   
  }
}
class Custom extends StatefulWidget{
 final IconData icon;
 final String text;
 final Function onTap;
  Custom(this.icon,this.text,this.onTap);

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
   child: InkWell(
     onTap: widget.onTap,
     child:
      Container(
       // decoration: BoxDecoration(
         // border:Border(bottom: BorderSide(color:Colors.grey[400]))
        //),
       height: 50,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Row(
             children: <Widget>[
               Icon(widget.icon),
                 Padding(padding: const EdgeInsets.all(2),
                  child: Text(widget.text,style:TextStyle(
                     fontSize: 18
                              ),
                            ),
                           )
                          ]
                        ,),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                   
                 ),
               ), 
             );
   
  }
}