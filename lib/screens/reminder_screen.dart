import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:meditationapp/screens/main_screen.dart';
import 'package:meditationapp/screens/widgets/button_day.dart';

class ReminderScreen extends StatefulWidget {
  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  String _title;
  TimeOfDay _timeOfDay;
  var selectDay = [true, true, true, true, true, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                        text: "What time would you\nlike to meditate?\n",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(63, 65, 78, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: " \n",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                height: 1,
                                color: Color.fromRGBO(161, 164, 178, 1)),
                          ),
                          TextSpan(
                            text:
                                "Any time you can choose but We recommend first thing in the morning.",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                color: Color.fromRGBO(161, 164, 178, 1)),
                          ),
                        ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 249, 1)),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2.2,
                  child: CupertinoTheme(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (DateTime newDateTime) {
                        var newTod = TimeOfDay.fromDateTime(newDateTime);
                        setState(() {
                          _timeOfDay = newTod;
                        });
                      },
                      use24hFormat: false,
                      minuteInterval: 1,
                    ),
                    data: CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 24,
                          // wordSpacing: 300,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(63, 65, 78, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        text: "Which day would you\nlike to meditate?\n",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(63, 65, 78, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: " \n",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                height: 1,
                                color: Color.fromRGBO(161, 164, 178, 1)),
                          ),
                          TextSpan(
                            text:
                                "Everyday is best, but we recommend picking at least five.",
                            style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                color: Color.fromRGBO(161, 164, 178, 1)),
                          ),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width / 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[0] = !selectDay[0];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[0],
                              text: "SU",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[1] = !selectDay[1];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[1],
                              text: "M",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[2] = !selectDay[2];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[2],
                              text: "T",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[3] = !selectDay[3];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[3],
                              text: "W",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[4] = !selectDay[4];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[4],
                              text: "TH",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[5] = !selectDay[5];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[5],
                              text: "F",
                            )),
                      ),
                      ButtonTheme(
                        minWidth: 45,
                        height: 45,
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              setState(() {
                                selectDay[6] = !selectDay[6];
                              });
                            },
                            child: ButtonDay(
                              selected: selectDay[6],
                              text: "S",
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 12,
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width / 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(142, 151, 253, 1),
                        ),
                        child: Center(
                            child: Text(
                          "SAVE",
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Text(
                      "NO THANKS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Color.fromRGBO(63, 65, 78, 1)),
                    ),
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
