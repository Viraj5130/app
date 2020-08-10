import 'package:app/components/text_field_container.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';
//import 'package:app/components/text_field_container.dart';
//import 'package:app/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
   RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
 bool _obscureText= true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _obscureText,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off
          ),
          onPressed: (){
            setState(() {_obscureText=!_obscureText;
              
            });
          },
          ),
          
          border: InputBorder.none,
        ),
      ),
    );
  }
}
