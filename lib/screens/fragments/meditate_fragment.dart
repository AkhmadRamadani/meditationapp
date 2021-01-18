import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditationapp/screens/fragments/music_fragment.dart';

class MeditateFragment extends StatefulWidget {
  @override
  _MeditateFragmentState createState() => _MeditateFragmentState();
}

class _MeditateFragmentState extends State<MeditateFragment>
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
      body: SafeArea(
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
                        "Meditate",
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Color.fromRGBO(63, 65, 78, 1)),
                      ),
                      Text(
                        "\nwe can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                            height: 1,
                            color: Color.fromRGBO(160, 163, 177, 1)),
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
                                    color: Color.fromRGBO(63, 65, 78, 1)),
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
                                  color: Color.fromRGBO(160, 163, 177, 1),
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
                                    color: Color.fromRGBO(160, 163, 177, 1)),
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
                                  color: Color.fromRGBO(160, 163, 177, 1),
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
                                    color: Color.fromRGBO(160, 163, 177, 1)),
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
                                  color: Color.fromRGBO(160, 163, 177, 1),
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
                                    color: Color.fromRGBO(160, 163, 177, 1)),
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
                                  color: Color.fromRGBO(160, 163, 177, 1),
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
                                    color: Color.fromRGBO(160, 163, 177, 1)),
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
                                  color: Color.fromRGBO(160, 163, 177, 1),
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
                                    color: Color.fromRGBO(160, 163, 177, 1)),
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
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MusicFragment()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(241, 221, 207, 1),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/assets/images/background_card_meditate.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 27, horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Daily Calm",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(63, 65, 78, 1),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "APR 30 • PAUSE PRACTICE",
                                      style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color: Color.fromRGBO(90, 97, 117, 1),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Icon(Icons.play_arrow,
                                      size: 24, color: Colors.white),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(63, 65, 78, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(bottom: 10, right: 10),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    height:
                                        MediaQuery.of(context).size.width / 2,
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/images/image_meditate1.png"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10, sigmaY: 7),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "7 Days of Calm",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, right: 10),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    height:
                                        MediaQuery.of(context).size.width / 2.4,
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/images/image_meditate3.png"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10, sigmaY: 7),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Surf your Emotions",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 18,
                                                  color: Colors.white),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    height:
                                        MediaQuery.of(context).size.width / 2.4,
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/images/image_meditate2.png"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10, sigmaY: 7),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Anxiety Releases",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    height:
                                        MediaQuery.of(context).size.width / 2,
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/images/image_meditate4.png"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 10, sigmaY: 7),
                                              child: Container(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Blow up Your Mind",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 18,
                                                  color: Colors.white),
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// TabBar(
//                       unselectedLabelColor: Color.fromRGBO(63, 65, 78, 1),
//                       indicatorSize: TabBarIndicatorSize.label,
//                       indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
//                       indicatorColor: Color.fromRGBO(142, 151, 253, 1),
//                       labelColor: Color.fromRGBO(142, 151, 253, 1),
//                       labelPadding: EdgeInsets.symmetric(horizontal: 0),
//                       labelStyle: TextStyle(
//                           fontFamily: 'HelveticaNeue',
//                           fontSize: 16,
//                           color: Color.fromRGBO(142, 151, 253, 1)),
//                       controller: controller,
//                       tabs: [
//                         Tab(
//                           child: Container(
//                             child: Column(
//                               children: [
//                                 Container(
//                                   width: 65,
//                                   height: 65,
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25),
//                                     color: Color.fromRGBO(142, 151, 253, 1),
//                                   ),
//                                   child: Image(
//                                     width: 25,
//                                     height: 25,
//                                     image: AssetImage(
//                                         "lib/assets/images/icons/all_icon.png"),
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text(
//                                   "All",
//                                   style: TextStyle(
//                                       fontFamily: 'HelveticaNeue',
//                                       fontSize: 16,
//                                       color: Color.fromRGBO(63, 65, 78, 1)),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Tab(
//                           child: Container(
//                             child: Column(
//                               children: [
//                                 Container(
//                                   width: 65,
//                                   height: 65,
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25),
//                                     color: Color.fromRGBO(142, 151, 253, 1),
//                                   ),
//                                   child: Image(
//                                     width: 25,
//                                     height: 25,
//                                     image: AssetImage(
//                                         "lib/assets/images/icons/all_icon.png"),
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text(
//                                   "All",
//                                   style: TextStyle(
//                                       fontFamily: 'HelveticaNeue',
//                                       fontSize: 16,
//                                       color: Color.fromRGBO(63, 65, 78, 1)),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
