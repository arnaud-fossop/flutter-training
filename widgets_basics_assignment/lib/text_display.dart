import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String _text;

  TextDisplay({text = 'Your text'}) : _text = text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(_text,
      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
    );
  }
}
