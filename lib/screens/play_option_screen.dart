import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditationapp/screens/fragments/music_fragment.dart';
import 'package:meditationapp/screens/sleep_music_screen.dart';

class PlayOption extends StatefulWidget {
  @override
  _PlayOptionState createState() => _PlayOptionState();
}

class _PlayOptionState extends State<PlayOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(3, 23, 76, 1),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(
                            "lib/assets/images/play_option_vector.png"),
                        fit: BoxFit.cover),
                  ),
                  child: SafeArea(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(235, 234, 236, 1)),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color.fromRGBO(63, 65, 78, 1),
                                  size: 24,
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color:
                                              Color.fromRGBO(3, 27, 76, 0.7)),
                                      child: Icon(
                                        FontAwesomeIcons.heart,
                                        color: Color.fromRGBO(235, 234, 236, 1),
                                        size: 24,
                                      )),
                                ),
                                GestureDetector(
                                  child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color:
                                              Color.fromRGBO(3, 27, 76, 0.7)),
                                      child: Icon(
                                        FontAwesomeIcons.download,
                                        color: Color.fromRGBO(235, 234, 236, 1),
                                        size: 24,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Night Island",
                        style: TextStyle(
                            color: Color.fromRGBO(230, 231, 242, 1),
                            fontFamily: 'HelveticaNeue',
                            fontSize: 34,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\n45 MIN • SLEEP MUSIC\n",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 14,
                            height: 1,
                            color: Color.fromRGBO(152, 161, 189, 1)),
                      ),
                      Text(
                        "Ease the mind into a restful night’s sleep with\nthese deep, amblent tones.",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                            color: Color.fromRGBO(152, 161, 189, 1)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.solidHeart,
                                    color: Color.fromRGBO(230, 231, 242, 1),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "24.234 Favorites",
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(230, 231, 242, 1)),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.headset,
                                    color: Color.fromRGBO(230, 231, 242, 1),
                                    size: 24,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "35.324 Listening",
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(230, 231, 242, 1)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SleepMusic()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Related",
                                style: TextStyle(
                                    color: Color.fromRGBO(230, 231, 242, 1),
                                    fontFamily: 'HelveticaNeue',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(230, 231, 242, 1)),
                                child: Icon(Icons.arrow_forward,
                                    size: 20,
                                    color: Color.fromRGBO(3, 23, 76, 1)),
                              )
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.4,
                                      height:
                                          MediaQuery.of(context).size.width /
                                              2.2,
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromRGBO(
                                                    175, 219, 197, 1),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "lib/assets/images/card_sleep_vector1.png"),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.topLeft,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Night Island",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'HelveticaNeue',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            230, 231, 242, 1),
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "45 MIN • SLEEP MUSIC",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'HelveticaNeue',
                                                        color: Color.fromRGBO(
                                                            152, 161, 189, 1),
                                                        fontSize: 11),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.4,
                                    height:
                                        MediaQuery.of(context).size.width / 2.2,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  175, 219, 197, 1),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "lib/assets/images/card_sleep_vector3.png"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Night Island",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          230, 231, 242, 1),
                                                      fontSize: 18),
                                                ),
                                                Text(
                                                  "45 MIN • SLEEP MUSIC",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      color: Color.fromRGBO(
                                                          152, 161, 189, 1),
                                                      fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              alignment: Alignment.topRight,
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.4,
                                    height:
                                        MediaQuery.of(context).size.width / 2.2,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  175, 219, 197, 1),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "lib/assets/images/card_sleep_vector2.png"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Sweet Sleep",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          230, 231, 242, 1),
                                                      fontSize: 18),
                                                ),
                                                Text(
                                                  "45 MIN • SLEEP MUSIC",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      color: Color.fromRGBO(
                                                          152, 161, 189, 1),
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
                                    width:
                                        MediaQuery.of(context).size.width / 2.4,
                                    height:
                                        MediaQuery.of(context).size.width / 2.2,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  175, 219, 197, 1),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "lib/assets/images/card_sleep_vector4.png"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Night Island",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          230, 231, 242, 1),
                                                      fontSize: 18),
                                                ),
                                                Text(
                                                  "45 MIN • SLEEP MUSIC",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'HelveticaNeue',
                                                      color: Color.fromRGBO(
                                                          152, 161, 189, 1),
                                                      fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MusicFragment(isDark: true)));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width / 7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(140, 150, 255, 1)),
                              child: Center(
                                  child: Text(
                                "PLAY",
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
                ),
              ],
            ),
          ),
        ));
  }
}
