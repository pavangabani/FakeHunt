import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class How extends StatefulWidget {
  @override
  _How createState() => _How();
}

class _How extends State<How> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text('How Error level Analysis work',
                style:
                TextStyle(fontFamily: 'Code128', fontSize: 25.0)),
          ),
          Container(
            width: 500,
            child: Image.asset(
              'photo/ela-images/0001.jpg',
              width: 600,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              'photo/ela-images/0002.jpg',
              width: 410,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              'photo/ela-images/0003.jpg',
              width: 410,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              'photo/ela-images/0004.jpg',
              width: 410,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              'photo/ela-images/0005.jpg',
              width: 410,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
