import 'package:flutter/material.dart';

class AudioWidget extends StatefulWidget {
  final bool isPlayed;
  final String time;
  final String title;

  AudioWidget({Key key, this.isPlayed, this.title, this.time})
      : super(key: key);
  @override
  _AudioWidgetState createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 0.5, color: Color.fromRGBO(173, 184, 217, 1)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: widget.isPlayed
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(142, 151, 253, 1)),
                    width: 35,
                    height: 35,
                    child:
                        Icon(Icons.play_arrow, size: 24, color: Colors.white),
                  )
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(161, 164, 178, 1))),
                    width: 35,
                    height: 35,
                    child: Icon(Icons.play_arrow,
                        size: 24, color: Color.fromRGBO(161, 164, 178, 1)),
                  ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.title,
                    style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 16,
                        color: Color.fromRGBO(63, 65, 78, 1))),
                SizedBox(
                  height: 5,
                ),
                Text(widget.time,
                    style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 11,
                        color: Color.fromRGBO(161, 164, 178, 1))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
