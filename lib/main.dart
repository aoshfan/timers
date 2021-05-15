import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Page1(),
    ),
  );
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator
                .push(context,MaterialPageRoute(builder: (context) => Page2()));
          },
          child: Text('Open Page 2'),
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  // final String _text;
  int _counter = 10;
  int _round = 10;
  Timer _timer;

  // Page2(this._text);

  void _startTimer() {
    _counter = 10;
    if (_timer != null) {
      _timer.cancel();
    }
    for
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
              "DONE!",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Text(
              '$_counter + $_round',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RaisedButton(
              onPressed: () => _startTimer(),
              child: Text("Start 10 second count down"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator
                    .pop(context);
              },
              child: Text("_text"),
            )
          ],
        ),
      ),
    );
  }
}
