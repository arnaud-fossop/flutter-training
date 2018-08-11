import 'package:flutter/material.dart';
import './text_display.dart';

class TextControl extends StatefulWidget {
  final String startingText;

  TextControl([this.startingText = 'My Text']);

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _startingText;
  int _number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startingText = widget.startingText;
  }

  void _changeText() {
    setState(() {
      _number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: _changeText,
              child: Text('Change text'),
            ),
          ),
          TextDisplay(
            text: _startingText + ' ' + _number.toString(),
          ),
        ],
      ),
    );
  }
}
