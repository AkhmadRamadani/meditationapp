import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SleepMusic extends StatefulWidget {
  @override
  _SleepMusicState createState() => _SleepMusicState();
}

class _SleepMusicState extends State<SleepMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 32, 76, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Icon(
                              Icons.arrow_back,
                              color: Color.fromRGBO(63, 65, 78, 1),
                              size: 24,
                            )),
                      ),
                      Text(
                        "Sleep Music",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(230, 231, 242, 1)),
                      ),
                      SizedBox(
                        width: 48,
                      )
                    ],
                  ),
                ),
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
                                width: MediaQuery.of(context).size.width / 2.4,
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromRGBO(175, 219, 197, 1),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Night Island",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      230, 231, 242, 1),
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "45 MIN • SLEEP MUSIC",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
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
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: MediaQuery.of(context).size.width / 2.2,
                              margin: EdgeInsets.only(bottom: 10),
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
                                                "lib/assets/images/card_sleep_vector3.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width: MediaQuery.of(context).size.width,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Night Island",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    230, 231, 242, 1),
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "45 MIN • SLEEP MUSIC",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.4,
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromRGBO(175, 219, 197, 1),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Night Island",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      230, 231, 242, 1),
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "45 MIN • SLEEP MUSIC",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.4,
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromRGBO(175, 219, 197, 1),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Night Island",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      230, 231, 242, 1),
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "45 MIN • SLEEP MUSIC",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
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
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: MediaQuery.of(context).size.width / 2.2,
                              margin: EdgeInsets.only(bottom: 10),
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
                                                "lib/assets/images/card_sleep_vector2.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width: MediaQuery.of(context).size.width,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Sweet Sleep",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    230, 231, 242, 1),
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "45 MIN • SLEEP MUSIC",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
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
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: MediaQuery.of(context).size.width / 2.2,
                              margin: EdgeInsets.only(bottom: 10),
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
                                                "lib/assets/images/card_sleep_vector4.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width: MediaQuery.of(context).size.width,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Night Island",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    230, 231, 242, 1),
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "45 MIN • SLEEP MUSIC",
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.4,
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromRGBO(175, 219, 197, 1),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Night Island",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      230, 231, 242, 1),
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "45 MIN • SLEEP MUSIC",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.4,
                                height: MediaQuery.of(context).size.width / 2.2,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromRGBO(175, 219, 197, 1),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "Night Island",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromRGBO(
                                                      230, 231, 242, 1),
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "45 MIN • SLEEP MUSIC",
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
