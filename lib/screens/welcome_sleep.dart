import 'package:flutter/material.dart';

class WelcomeSleep extends StatefulWidget {
  @override
  _WelcomeSleepState createState() => _WelcomeSleepState();
}

class _WelcomeSleepState extends State<WelcomeSleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 23, 76, 1),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("lib/assets/images/welcome sleep.png"),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Welcome to Sleep\n",
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(235, 234, 236, 1),
                        ),
                      ),
                      Text(
                        "Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(235, 234, 236, 1)),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    "lib/assets/images/welcome_sleep_vector.png",
                    fit: BoxFit.contain,
                    alignment: Alignment.topRight,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: MediaQuery.of(context).size.width / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(140, 150, 255, 1)),
                        child: Center(
                            child: Text(
                          "GET STARTED",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(235, 234, 236, 1),
                              fontSize: 16),
                        ))),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
