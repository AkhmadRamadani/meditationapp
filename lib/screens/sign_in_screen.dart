import 'package:flutter/material.dart';
import 'package:meditationapp/screens/sign_up_screen.dart';
import 'package:meditationapp/screens/welcome_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("lib/assets/images/sign_up_frame.png"),
                    fit: BoxFit.fill),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 1.2,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: SafeArea(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.width / 18,
                          ),
                          child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            Color.fromRGBO(235, 234, 236, 1))),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color.fromRGBO(63, 65, 78, 1),
                                  size: 30,
                                )),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                child: Text(
                                  "Welcome Back!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 28,
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width / 10,
                                    bottom:
                                        MediaQuery.of(context).size.width / 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlatButton(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                117, 131, 202, 1),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Image(
                                              width: 12,
                                              height: 24,
                                              image: AssetImage(
                                                  "lib/assets/images/icons/fb_icon.png"),
                                              fit: BoxFit.contain,
                                            ),
                                            Text(
                                              "CONTINUE WITH FACEBOOK",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  color: Colors.white),
                                            ),
                                            SizedBox()
                                          ],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Color.fromRGBO(
                                                    235, 234, 236, 1)),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Image(
                                              width: 24,
                                              height: 24,
                                              image: AssetImage(
                                                  "lib/assets/images/icons/google_icon.png"),
                                              fit: BoxFit.contain,
                                            ),
                                            Text(
                                              "CONTINUE WITH GOOGLE",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  color: Colors.black),
                                            ),
                                            SizedBox()
                                          ],
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      child: Text(
                                        "OR LOGIN WITH EMAIL",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'HelveticaNeue',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(
                                                161, 164, 178, 1)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 3,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                243, 243, 247, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: TextField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontFamily: 'HelveticaNeue'),
                                          decoration: InputDecoration.collapsed(
                                            hintText: "Email address",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                243, 243, 247, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: TextField(
                                          obscureText: true,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontFamily: 'HelveticaNeue'),
                                          decoration: InputDecoration.collapsed(
                                            hintText: "Password",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 12,
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WelcomeScreen()),
                                    );
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          50,
                                      height:
                                          MediaQuery.of(context).size.width / 7,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color.fromRGBO(142, 151, 253, 1),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "LOG IN",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'HelveticaNeue',
                                            color: Colors.white,
                                            fontSize: 16),
                                      ))),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: FlatButton(
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: Color.fromRGBO(63, 65, 78, 1)),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          20,
                                      bottom: 10),
                                  alignment: Alignment.bottomCenter,
                                  child: FlatButton(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen()));
                                    },
                                    child: RichText(
                                      text: TextSpan(
                                          text: "DOESN'T HAVE AN ACCOUNT? ",
                                          style: TextStyle(
                                              fontFamily: 'HelveticaNeue',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  161, 164, 178, 1)),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "SIGN UP",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 151, 253, 1),
                                                ))
                                          ]),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
