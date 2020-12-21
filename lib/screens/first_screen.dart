import 'package:flutter/material.dart';
import 'package:meditationapp/screens/sign_in_screen.dart';
import 'package:meditationapp/screens/sign_up_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SafeArea(
                  child: Container(
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/home_frame.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        Container(
                          width: 30,
                          height: 30,
                          child: Image(
                            image: AssetImage("lib/assets/images/logo.png"),
                            fit: BoxFit.contain,
                          ),
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
                        width: MediaQuery.of(context).size.width - 50,
                      ),
                    )
                  ],
                ),
              )),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "We are what we do",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          Text(
                            "Thousand of people are using silent moon \nfor smalls meditation ",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Color.fromRGBO(161, 164, 178, 1)),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 4,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()),
                                );
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: MediaQuery.of(context).size.width / 7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(142, 151, 253, 1),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "SIGN UP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ))),
                            ),
                          ),
                          FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                            child: RichText(
                              text: TextSpan(
                                  text: "ALREADY HAVE AN ACCOUNT? ",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(161, 164, 178, 1)),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "LOG IN",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(142, 151, 253, 1),
                                        ))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
