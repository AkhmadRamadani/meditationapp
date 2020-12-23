import 'package:flutter/material.dart';

class CardRecommend extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final String color;
  CardRecommend({Key key, this.imageUrl, this.title, this.desc, this.color})
      : super(key: key);
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends State<CardRecommend> {
  @override
  Widget build(BuildContext context) {
    String _imageUrl = widget.imageUrl;

    return Container(
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
                    image: AssetImage("$_imageUrl"), fit: BoxFit.cover),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        color: Color.fromRGBO(161, 164, 178, 1),
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
