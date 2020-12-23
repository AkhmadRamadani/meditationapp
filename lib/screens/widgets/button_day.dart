import 'package:flutter/material.dart';

class ButtonDay extends StatefulWidget {
  final bool selected;
  final String text;

  ButtonDay({Key key, this.selected, this.text}) : super(key: key);
  @override
  _ButtonDayState createState() => _ButtonDayState();
}

class _ButtonDayState extends State<ButtonDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: widget.selected ? Color.fromRGBO(63, 65, 78, 1) : Colors.white,
          border: Border.all(width: 1, color: Color.fromRGBO(63, 65, 78, 1)),
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        widget.text,
        style: TextStyle(
            color:
                widget.selected ? Colors.white : Color.fromRGBO(63, 65, 78, 1),
            fontFamily: 'HelveticaNeue',
            fontSize: 14),
      ),
    );
  }
}
