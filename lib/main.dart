import 'package:flutter/material.dart';

import './displaytext.dart';
import './changedatabtn.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var textToDisplayed = ['One', 'Two', 'Three'];

  var textIndex = 0;

  void changeText() {
    print('Changed Text');

    setState(() {
      textIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: Column(
          children: <Widget>[
            DisplayTextWidget(textToDisplayed[textIndex]),
            ChangeDataButton(
                label: 'Change Data', changeTextHandler: changeText),
          ],
        ),
      ),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Assignment'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Text('hello'),
//           RaisedButton(
//             textColor: Colors.white,
//             color: Colors.black,
//             child: Text('Check'),
//             onPressed: null,
//           )
//         ],
//       ),
//     ));
//   }
// }
