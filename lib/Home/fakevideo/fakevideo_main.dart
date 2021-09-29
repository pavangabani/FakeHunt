import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fakevideo extends StatefulWidget {
  @override
  _Fakevideo createState() => _Fakevideo();
}

class _Fakevideo extends State<Fakevideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Fake Video', style: TextStyle(fontFamily: 'Raleway')),
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