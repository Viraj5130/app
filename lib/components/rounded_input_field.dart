import 'package:flutter/material.dart';
import 'package:app/components/text_field_container.dart';
import 'package:app/constants.dart';

class RoundedInputField extends StatelessWidget {
   
  final String hintText;
  final IconData icon;
  
  final ValueChanged<String> onChanged;
  
    RoundedInputField({
    Key key,
    
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
     
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
