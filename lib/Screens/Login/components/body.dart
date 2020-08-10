import 'package:app/components/emailinput.dart';
import 'package:app/components/loginbutton.dart';
import 'package:app/components/password.dart';
import 'package:app/constants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:app/Screens/Login/components/background.dart';
import 'package:app/Screens/Signup/signup_screen.dart';
import 'package:app/homepage.dart';
import 'package:app/components/already_have_an_account_acheck.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/components/rounded_input_field.dart';
import 'package:app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  
   Body({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;
    return Background(
      child:Form(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
     
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
           // SizedBox(height: size.height * 0.03),
            
            Emailinput(
              hintText: "Your Email",
              
    

              onChanged: (value) {},
            
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              
         ),

         
        

            
            RoundedButton(
             text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Homepage();
                    },
                  ),
                );
              },
            ),
         //   SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      
     )
      );
  }
}



 