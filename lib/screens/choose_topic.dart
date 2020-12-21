import 'package:flutter/material.dart';

class ChooseTopicScreenWidget extends StatefulWidget {
  @override
  _ChooseTopicScreenWidgetState createState() =>
      _ChooseTopicScreenWidgetState();
}

class _ChooseTopicScreenWidgetState extends State<ChooseTopicScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/choose_topic.png"),
                  fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                            text: "What brings You\n",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(63, 65, 78, 1)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "to Silent Moon?",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              TextSpan(
                                text: "\nchoose a topic to focuse on:",
                                style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    height: 2,
                                    color: Color.fromRGBO(161, 164, 178, 1)),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              10,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(142, 151, 253, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              "lib/assets/images/card1_bg.png",
                                              fit: BoxFit.fitWidth,
                                              alignment: Alignment.topCenter,
                                            ),
                                          )),
                                          Positioned.fill(
                                              child: Image.asset(
                                            "lib/assets/images/card1_vector.png",
                                            fit: BoxFit.fitWidth,
                                            alignment: Alignment.topCenter,
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Reduce Stress",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        255, 236, 204, 1)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(254, 177, 143, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              "lib/assets/images/card2_bg.png",
                                              fit: BoxFit.contain,
                                              alignment: Alignment.topCenter,
                                            ),
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Increase Happiness",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        63, 65, 78, 1)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              10,
                                      padding: EdgeInsets.only(top: 5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(108, 178, 141, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              "lib/assets/images/card3_bg.png",
                                              fit: BoxFit.fitWidth,
                                              alignment: Alignment.topCenter,
                                            ),
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Personal Growth",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        255, 236, 204, 1)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(117, 131, 202, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              "lib/assets/images/card1_vector.png",
                                              fit: BoxFit.contain,
                                              alignment: Alignment.topCenter,
                                            ),
                                          )),
                                          // Positioned.fill(
                                          //   child: Container(
                                          //     padding: EdgeInsets.symmetric(
                                          //         vertical: 20, horizontal: 15),
                                          //     alignment: Alignment.bottomLeft,
                                          //     child: Text(
                                          //       "Better Sleep",
                                          //       style: TextStyle(
                                          //           fontFamily: "HelveticaNeue",
                                          //           fontSize: 18,
                                          //           fontWeight: FontWeight.w700,
                                          //           color: Colors.white),
                                          //     ),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(250, 110, 90, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 10),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image.asset(
                                                "lib/assets/images/card4_bg.png",
                                                fit: BoxFit.contain,
                                                alignment: Alignment.topCenter,
                                              ),
                                            ),
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Improve Performance",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              10,
                                      padding: EdgeInsets.only(top: 5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 207, 134, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image.asset(
                                                "lib/assets/images/card5_bg.png",
                                                fit: BoxFit.contain,
                                                alignment: Alignment.topCenter,
                                              ),
                                            ),
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Reduce Anxiety",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        63, 65, 78, 1)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              40,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            child: Image.asset(
                                              "lib/assets/images/card6_bg.png",
                                              fit: BoxFit.contain,
                                              alignment: Alignment.topCenter,
                                            ),
                                          )),
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 15),
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Better Sleep",
                                                style: TextStyle(
                                                    fontFamily: "HelveticaNeue",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  2 -
                                              10,
                                      padding: EdgeInsets.only(top: 5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(217, 165, 181, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned.fill(
                                              child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image.asset(
                                                "lib/assets/images/card7_bg.png",
                                                fit: BoxFit.contain,
                                                alignment: Alignment.topCenter,
                                              ),
                                            ),
                                          )),
                                          // Positioned.fill(
                                          //   child: Container(
                                          //     padding: EdgeInsets.symmetric(
                                          //         vertical: 20, horizontal: 15),
                                          //     alignment: Alignment.bottomLeft,
                                          //     child: Text(
                                          //       "Reduce Anxiety",
                                          //       style: TextStyle(
                                          //           fontFamily: "HelveticaNeue",
                                          //           fontSize: 18,
                                          //           fontWeight: FontWeight.w700,
                                          //           color: Color.fromRGBO(
                                          //               63, 65, 78, 1)),
                                          //     ),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              )),
            )));
  }
}
