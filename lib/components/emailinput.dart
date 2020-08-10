import 'package:flutter/material.dart';
import 'package:app/components/text_field_container.dart';
import 'package:app/constants.dart';

// ignore: must_be_immutable
class Emailinput extends StatelessWidget {
   final formKey = GlobalKey<FormState>();
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

  void _loginCommand() {
    // This is just a demo, so no actual login here.
    final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }
  final String hintText;
  final IconData icon;
  
  final ValueChanged<String> onChanged;
  
    Emailinput({
    Key key,
    
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
     
      onSaved: (String value) {
        _email = value;
      },
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          
          
        ),
      ),
    );
  }
}