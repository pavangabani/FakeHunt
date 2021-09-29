import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendImage extends StatefulWidget {
  @override
  _SendImage createState() => _SendImage ();


}

class _SendImage  extends State<SendImage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('This feature available soon where you can send image to server for advanced detection',
                  style:
                  TextStyle(fontFamily: 'Code128', fontSize: 25.0)),
            ),
          ],
        ),
      ),
    );
  }
}
