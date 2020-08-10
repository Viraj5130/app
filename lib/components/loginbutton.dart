import 'package:app/constants.dart';
import 'package:flutter/material.dart';


class Loginbutton extends StatelessWidget { final GlobalKey<FormState> _key = GlobalKey<FormState>();  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;
  String _password;

  void _submitCommand() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      // Email & password matched our validation rules
      // and are saved to _email and _password fields.
      _loginCommand();
    }
  }  
  final Function press;
 
   Loginbutton({
    Key key,
    
    this.press,
   
  }) : super(key: key);


  void _loginCommand() {
    // This is just a demo, so no actual login here.
    final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(key: scaffoldKey,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(key: formKey,
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kPrimaryColor,
          onPressed: _submitCommand,
        
          child: Text("LOGIN",
            
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
