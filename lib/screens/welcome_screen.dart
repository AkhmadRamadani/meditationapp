import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            height: MediaQuery.of(context).size.height / 1.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/home_frame.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "S i l e n t ",
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal App',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Image(
                      image: AssetImage("lib/assets/images/logo.png"),
                      fit: BoxFit.contain,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        " M o o n",
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal App',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 8),
                  child: Image(
                    image: AssetImage("lib/assets/images/home_vector.png"),
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: <Widget>[
                Text(
                  "We are what we do",
                  style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
