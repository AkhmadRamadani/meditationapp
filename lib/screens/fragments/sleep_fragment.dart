import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditationapp/screens/play_option_screen.dart';

class SleepFragment extends StatefulWidget {
  @override
  _SleepFragmentState createState() => _SleepFragmentState();
}

class _SleepFragmentState extends State<SleepFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 23, 76, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage("lib/assets/images/sleep_frame.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "Sleep Stories",
                          style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              color: Color.fromRGBO(235, 234, 236, 1)),
                        ),
                        Text(
                          "\nSoothing bedtime stories to help you fall into a deep and natural sleep.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                            height: 1,
                            color: Color.fromRGBO(235, 234, 236, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (context, i) => Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(142, 151, 253, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/all_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "All",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(230, 231, 242, 1)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(152, 161, 189, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/my_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "My",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(152, 161, 189, 1)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(152, 161, 189, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/anxious_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Anxious",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(152, 161, 189, 1)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(152, 161, 189, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/sleep_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Sleep",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(152, 161, 189, 1)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(152, 161, 189, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/kids_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Kids",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(152, 161, 189, 1)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(152, 161, 189, 1),
                                  ),
                                  child: Image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage(
                                        "lib/assets/images/icons/anxious_icon.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Anxious",
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      fontSize: 16,
                                      color: Color.fromRGBO(152, 161, 189, 1)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 1.5,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "lib/assets/images/bg_card_sleep1.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(12),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(255, 255, 255, 0.2)),
                                child: Icon(
                                  Icons.lock,
                                  size: 16,
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width / 2.7,
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "The Ocean Moon",
                                            style: TextStyle(
                                                fontSize: 36,
                                                fontFamily:
                                                    'Garamond Premiere Pro',
                                                color: Color.fromRGBO(
                                                    255, 231, 191, 1)),
                                          ),
                                          Text(
                                            "Non-stop 8-hours mixes of our\nmost popular sleep audio",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    249, 249, 255, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 35,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(235, 234, 236, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        "Start",
                                        style: TextStyle(
                                            fontFamily: 'HelveticaNeue',
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(63, 65, 78, 1)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PlayOption()));
                                },
                                child: Container(
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height:
                                              MediaQuery.of(context).size.width,
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
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
                                                  "lib/assets/images/card_sleep_vector4.png"),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
