import 'package:flutter/material.dart';

class DisplayTextWidget extends StatelessWidget {
  final String displayText;

  DisplayTextWidget(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Text(
      displayText,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,
    );
  }
}
