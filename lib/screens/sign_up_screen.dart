import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var show_password = false, checked_value = false;

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
                                  "Create your account",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 28,
                                      color: Color.fromRGBO(63, 65, 78, 1),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 2.1,
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width / 10,
                                    bottom:
                                        MediaQuery.of(context).size.width / 21),
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
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              50,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  243, 243, 247, 1),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 5,
                                                child: TextField(
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue'),
                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: "Username",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 22,
                                                    color: Colors.greenAccent,
                                                  ))
                                            ],
                                          )),
                                      Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              50,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  243, 243, 247, 1),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 5,
                                                child: TextField(
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue'),
                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: "Email address",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 22,
                                                    color: Colors.greenAccent,
                                                  ))
                                            ],
                                          )),
                                      Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              50,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  243, 243, 247, 1),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 5,
                                                child: TextField(
                                                  obscureText: !show_password,
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue'),
                                                  decoration:
                                                      InputDecoration.collapsed(
                                                    hintText: "Password",
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    width: 22,
                                                    height: 22,
                                                    child: FlatButton(
                                                      splashColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onPressed: () {
                                                        setState(() {
                                                          show_password =
                                                              !show_password;
                                                        });
                                                      },
                                                      child: Image(
                                                        image: show_password
                                                            ? AssetImage(
                                                                "lib/assets/images/icons/merem.png")
                                                            : AssetImage(
                                                                "lib/assets/images/icons/melek.png"),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 24,
                                ),
                                width: MediaQuery.of(context).size.width - 55,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                          text: "I have read the ",
                                          style: TextStyle(
                                              fontFamily: 'HelveticaNeue',
                                              fontSize: 16,
                                              color: Color.fromRGBO(
                                                  161, 164, 178, 1)),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "Privacy Policy",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 151, 253, 1),
                                                ))
                                          ]),
                                    ),
                                    Checkbox(
                                      value: checked_value,
                                      onChanged: (newValue) {
                                        setState(() {
                                          checked_value = newValue;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 24,
                                ),
                                child: FlatButton(
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
                                        "GET STARTED",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'HelveticaNeue',
                                            color: Colors.white,
                                            fontSize: 16),
                                      ))),
                                ),
                              ),
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
