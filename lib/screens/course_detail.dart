import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditationapp/screens/widgets/audio_widget.dart';

class CourseDetail extends StatefulWidget {
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      image: AssetImage("lib/assets/images/detail_image.png"),
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
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color.fromRGBO(3, 27, 76, 0.7)),
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
                                        color: Color.fromRGBO(3, 27, 76, 0.7)),
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
                      "Happy Morning",
                      style: TextStyle(
                          color: Color.fromRGBO(63, 65, 78, 1),
                          fontFamily: 'HelveticaNeue',
                          fontSize: 34,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\nCOURSE\n",
                      style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 14,
                          height: 1,
                          color: Color.fromRGBO(161, 164, 178, 1)),
                    ),
                    Text(
                      "Ease the mind into a restful night’s sleep with\nthese deep, amblent tones.",
                      style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: Color.fromRGBO(161, 164, 178, 1)),
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
                                  color: Color.fromRGBO(255, 132, 162, 1),
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
                                      color: Color.fromRGBO(161, 164, 178, 1)),
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
                                  color: Color.fromRGBO(127, 210, 242, 1),
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
                                      color: Color.fromRGBO(161, 164, 178, 1)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Pick a Narrator",
                      style: TextStyle(
                          color: Color.fromRGBO(63, 65, 78, 1),
                          fontFamily: 'HelveticaNeue',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    PreferredSize(
                      preferredSize: const Size.fromHeight(20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            unselectedLabelColor: Color.fromRGBO(63, 65, 78, 1),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            indicatorColor: Color.fromRGBO(142, 151, 253, 1),
                            labelColor: Color.fromRGBO(142, 151, 253, 1),
                            labelPadding: EdgeInsets.symmetric(horizontal: 0),
                            labelStyle: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontSize: 16,
                                color: Color.fromRGBO(142, 151, 253, 1)),
                            controller: controller,
                            tabs: [
                              Tab(text: "MALE VOICE"),
                              Tab(text: "FEMALE VOICE"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(
                        controller: controller,
                        children: <Widget>[
                          Column(
                            children: [
                              AudioWidget(
                                  isPlayed: false,
                                  title: "Focus Attention",
                                  time: "10 MIN"),
                              AudioWidget(
                                  isPlayed: true,
                                  title: "Body Scan",
                                  time: "5 MIN"),
                              AudioWidget(
                                  isPlayed: false,
                                  title: "Making Happiness",
                                  time: "3 MIN")
                            ],
                          ),
                          Column(
                            children: [
                              AudioWidget(
                                  isPlayed: false,
                                  title: "Focus Attention",
                                  time: "10 MIN"),
                              AudioWidget(
                                  isPlayed: false,
                                  title: "Body Scan",
                                  time: "5 MIN"),
                              AudioWidget(
                                  isPlayed: false,
                                  title: "Making Happiness",
                                  time: "3 MIN")
                            ],
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
    );
  }
}

// PreferredSize(
//     preferredSize: Size.fromHeight(70),
//     child: Align(
//       alignment: Alignment.centerLeft,
//       child: Container(
//         width: MediaQuery.of(context).size.width / 1.5,
//         child: TabBar(
//             controller: controller,
//             unselectedLabelColor: Colors.blue,
//             indicatorSize: TabBarIndicatorSize.label,
//             indicatorPadding:
//                 EdgeInsets.symmetric(horizontal: 20),
//             tabs: [
//               Tab(
//                 child: Container(
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "MALE VOICE",
//                       style: TextStyle(
//                         fontFamily: 'HelveticaNeue',
//                         fontSize: 16,
//                         color: Color.fromRGBO(
//                             142, 151, 253, 1),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: Container(
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "FEMALE VOICE",
//                       style: TextStyle(
//                         fontFamily: 'HelveticaNeue',
//                         fontSize: 16,
//                         color: Color.fromRGBO(
//                             142, 151, 253, 1),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//       ),
//     )),
