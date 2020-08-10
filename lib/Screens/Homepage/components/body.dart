import 'package:flutter/material.dart';
import 'package:app/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       color: Colors.orange,
              //       // margin: EdgeInsets.all(10.0),
              //       child: Image.asset(
              //         'assets/images/logo.jpg',
              //         height: 100,
              //         width: 100,
              //       ),
              //     ),
              //     Container(
              //       color: Colors.blue,
              //       // margin: EdgeInsets.all(10.0),
              //       child: Image.asset(
              //         'assets/images/logo.jpg',
              //         height: 100,
              //         width: 100,
              //       ),
              //     ),
              //     Container(
              //       color: Colors.purple,
              //       // margin: EdgeInsets.all(10.0),
              //       child: Image.asset(
              //         'assets/images/logo.jpg',
              //         height: 100,
              //         width: 100,
              //       ),
              //     ),
              //   ],
              // ),
              // Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.purple,
                    // margin: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/Dir.png',
                      height: 110,
                      width: 110,
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    // margin: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/Edu.png',
                      height: 110,
                      width: 110,
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    // margin: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/Blood.png',
                      height: 110,
                      width: 110,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
