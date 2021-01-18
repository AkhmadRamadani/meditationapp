import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MusicFragment extends StatefulWidget {
  final bool isDark;
  MusicFragment({Key key, this.isDark}) : super(key: key);
  @override
  _MusicFragmentState createState() => _MusicFragmentState();
}

class _MusicFragmentState extends State<MusicFragment> {
  bool _isPlay = false;
  double _sliderPlay = 10.35;
  @override
  Widget build(BuildContext context) {
    bool isDark = widget.isDark != null ? true : false;
    return Scaffold(
      backgroundColor: isDark
          ? Color.fromRGBO(3, 23, 76, 1)
          : Color.fromRGBO(250, 247, 242, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: isDark
                  ? AssetImage("lib/assets/images/music_background_dark.png")
                  : AssetImage("lib/assets/images/music_background.png"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
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
                                  color: Colors.white),
                              child: Icon(
                                FontAwesomeIcons.times,
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
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color.fromRGBO(3, 27, 76, 0.3)),
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
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color.fromRGBO(3, 27, 76, 0.3)),
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
                  Container(
                    // // color: Colors.red,
                    // margin: EdgeInsets.only(
                    //     bottom: MediaQuery.of(context).size.width / 4),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "Focus Attention",
                          style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontSize: 34,
                              color: isDark
                                  ? Color.fromRGBO(230, 231, 242, 1)
                                  : Color.fromRGBO(63, 65, 78, 1)),
                        ),
                        Text(
                          "\n7 DAYS OF CALM",
                          style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontSize: 14,
                              height: 2,
                              color: isDark
                                  ? Color.fromRGBO(152, 161, 189, 1)
                                  : Color.fromRGBO(160, 163, 177, 1)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.undoAlt),
                                iconSize: 28,
                                color: isDark
                                    ? Color.fromRGBO(230, 231, 242, 1)
                                    : null,
                                onPressed: () {
                                  double value = _sliderPlay - 0.15;
                                  setState(() {
                                    _sliderPlay =
                                        double.parse(value.toStringAsFixed(2));
                                  });
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isPlay = !_isPlay;
                                  });
                                },
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: isDark
                                        ? Color.fromRGBO(230, 231, 242, 1)
                                        : Color.fromRGBO(186, 188, 198, 1),
                                  ),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: isDark
                                            ? Color.fromRGBO(230, 231, 242, 0.5)
                                            : Color.fromRGBO(63, 65, 78, 1)),
                                    child: Icon(
                                      _isPlay
                                          ? FontAwesomeIcons.play
                                          : FontAwesomeIcons.pause,
                                      size: 28,
                                      color: isDark
                                          ? Color.fromRGBO(3, 65, 78, 1)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.redoAlt),
                                iconSize: 28,
                                onPressed: () {
                                  double value = _sliderPlay + 0.15;
                                  setState(() {
                                    _sliderPlay =
                                        double.parse(value.toStringAsFixed(2));
                                  });
                                },
                                color: isDark
                                    ? Color.fromRGBO(230, 231, 242, 1)
                                    : null,
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Slider(
                                  min: 00.00,
                                  max: 45.00,
                                  value: _sliderPlay,
                                  activeColor: isDark
                                      ? Color.fromRGBO(230, 231, 242, 1)
                                      : Color.fromRGBO(63, 65, 78, 1),
                                  inactiveColor: Colors.grey.withOpacity(0.5),
                                  onChanged: (value) {
                                    setState(() => _sliderPlay =
                                        double.parse(value.toStringAsFixed(2)));
                                  },
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "$_sliderPlay",
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontSize: 16,
                                          color: isDark
                                              ? Color.fromRGBO(230, 231, 242, 1)
                                              : Color.fromRGBO(63, 65, 78, 1),
                                        ),
                                      ),
                                      Text(
                                        "45.00",
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontSize: 16,
                                          color: isDark
                                              ? Color.fromRGBO(230, 231, 242, 1)
                                              : Color.fromRGBO(63, 65, 78, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
