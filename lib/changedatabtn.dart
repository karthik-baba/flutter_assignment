import 'package:flutter/material.dart';

class ChangeDataButton extends StatelessWidget {
  final String label;
  final Function changeTextHandler;

  ChangeDataButton({this.label, this.changeTextHandler});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(label),
      onPressed: changeTextHandler,
    );
  }
}
