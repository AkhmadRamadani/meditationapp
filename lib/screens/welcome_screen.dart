import 'package:flutter/material.dart';
import 'package:meditationapp/screens/choose_topic.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(140, 150, 255, 1),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/welcome.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: SafeArea(
                  child: Column(
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            child: Image(
                              image: AssetImage(
                                  "lib/assets/images/bordered_logo.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              " M o o n",
                              style: TextStyle(
                                  fontFamily: 'Airbnb Cereal App',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 14),
                        height: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Hi Afsar, Welcome\n",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 236, 204, 1)),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "to Silent Moon",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300))
                                  ]),
                            ),
                            Text(
                              "Explore the app, Find some peace of mind to\nprepare for meditation.",
                              style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 236, 204, 1)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 10),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseTopicScreenWidget()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: MediaQuery.of(context).size.width / 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(235, 234, 236, 1),
                      ),
                      child: Center(
                          child: Text(
                        "GET STARTED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(63, 65, 78, 1),
                            fontSize: 16),
                      ))),
                ),
              )
            ],
          ),
        ));
  }
}
