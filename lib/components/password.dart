import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget { 
  final TextEditingController controller;

   PasswordFormField({
    Key key,
    @required this.controller,
  })  : assert(controller != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _showPassword = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      content: Text('password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField( key: scaffoldKey,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          child: Icon(
            _showPassword ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
      obscureText: !_showPassword,
      // ignore: missing_return
       validator: (val) =>
                    val.length < 4 ? 'Password too short..' : null,
                onSaved: (val) => _password = val,
                
    );
  }
}