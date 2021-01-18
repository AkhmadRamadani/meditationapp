import 'package:flutter/material.dart';
import 'package:meditationapp/screens/course_detail.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                            text: "Good Morning, Afsar",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(63, 65, 78, 1)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nWe Wish you have a good day",
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  splashColor: Colors.black12,
                                  highlightColor: Colors.black12,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CourseDetail()));
                                  },
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          28,
                                      height:
                                          MediaQuery.of(context).size.width /
                                              1.8,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(142, 151, 253, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4.5,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image(
                                                image: AssetImage(
                                                    "lib/assets/images/card_home_vector1.png"),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            alignment: Alignment.topRight,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(15),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: TextSpan(
                                                        text: "Basics",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'HelveticaNeue',
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromRGBO(
                                                                    247,
                                                                    232,
                                                                    208,
                                                                    1)),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "\nCOURSE",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'HelveticaNeue',
                                                              fontSize: 12,
                                                              height: 2,
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "3-10 MIN",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    235,
                                                                    234,
                                                                    236,
                                                                    1)),
                                                      ),
                                                      Container(
                                                        width: 70,
                                                        height: 35,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Color.fromRGBO(
                                                              235, 234, 236, 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        child: Text("START"),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: FlatButton(
                                padding: EdgeInsets.all(0),
                                splashColor: Colors.black12,
                                highlightColor: Colors.black12,
                                onPressed: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      28,
                                  height:
                                      MediaQuery.of(context).size.width / 1.8,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 207, 134, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width /
                                                4.5,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10)),
                                          child: Image(
                                            image: AssetImage(
                                                "lib/assets/images/card_home_vector2.png"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        alignment: Alignment.topRight,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        height:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                textAlign: TextAlign.left,
                                                text: TextSpan(
                                                    text: "Relaxation",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'HelveticaNeue',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            63, 65, 78, 1)),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "\nMUSIC",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'HelveticaNeue',
                                                          fontSize: 12,
                                                          height: 2,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "3-10 MIN",
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            63, 65, 78, 1)),
                                                  ),
                                                  Container(
                                                    width: 70,
                                                    height: 35,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          63, 65, 78, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                    child: Text(
                                                      "START",
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              235,
                                                              234,
                                                              236,
                                                              1)),
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
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(63, 65, 78, 1),
                          image: DecorationImage(
                              image: AssetImage(
                                  "lib/assets/images/background_card_home.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 27, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daily Thought",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                Text(
                                  "MEDITATION • 3-10 MIN",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      color: Colors.white,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              child: Icon(Icons.play_arrow,
                                  size: 24,
                                  color: Color.fromRGBO(63, 65, 78, 1)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Recommended for you",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 24,
                            color: Color.fromRGBO(63, 65, 78, 1)),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, i) => Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 20),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(175, 219, 197, 1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/images/bg_card_home1.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Focus",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "MEDITATION • 3-10 MIN",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color:
                                              Color.fromRGBO(161, 164, 178, 1),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(254, 227, 180, 1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/images/bg_card_home2.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Happiness",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "MEDITATION • 3-10 MIN",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color:
                                              Color.fromRGBO(161, 164, 178, 1),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(175, 219, 197, 1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/images/bg_card_home1.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Focus",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "MEDITATION • 3-10 MIN",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color:
                                              Color.fromRGBO(161, 164, 178, 1),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
