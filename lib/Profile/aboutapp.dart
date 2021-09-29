import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutapp extends StatefulWidget {
  @override
  _Aboutapp  createState() => _Aboutapp ();
}

class _Aboutapp  extends State<Aboutapp > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'photo/about.jpg',
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