import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fakeaudio extends StatefulWidget {
  @override
  _Fakeaudio createState() => _Fakeaudio();
}

class _Fakeaudio extends State<Fakeaudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Fake Audio', style: TextStyle(fontFamily: 'Raleway')),
      ),
      body: Column(
        children: [
          Container(
                child: Center(
                  child: Container(
                    alignment:AlignmentDirectional.center,
                    child: Text(
                      "This feature is not available",
                      style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30),
                    ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
