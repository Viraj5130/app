import 'package:flutter/material.dart';
import 'package:app/Screens/Login/login_screen.dart';
import 'package:app/Screens/Signup/components/background.dart';
import 'package:app/homepage.dart';
import 'package:app/components/already_have_an_account_acheck.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/components/rounded_input_field.dart';
import 'package:app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            // SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Name",
              onChanged: (value) {},
            ),

            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),

            RoundedButton(
              text: "SIGNUP",
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
