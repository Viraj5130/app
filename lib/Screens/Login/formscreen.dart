import 'package:app/Screens/Welcome/components/background.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();


  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
      
      ),),
      
    
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
   
      body: Background(
      //  margin: EdgeInsets.all(24),
        child:SingleChildScrollView(
        child: Form(
          key: _formKey,
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          //    _buildName(), 
               SizedBox(height: 10),
              _buildEmail(),
              _buildPassword(),
          //    _builURL(),
          //    _buildPhoneNumber(),
          //    _buildCalories(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();

                  print(_name);
                  print(_email);
                  print(_phoneNumber);
                  print(_url);
                  print(_password);
                  print(_calories);

                  //Send to API
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
