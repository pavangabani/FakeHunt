import 'package:flutter/material.dart';
import 'detect.dart';
import 'file_page.dart';


class Fakeimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Fake Image Detect',
                style: TextStyle(fontFamily: 'Raleway')),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_outlined), ),
                Tab(icon: Icon(Icons.arrow_circle_down), )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Detect(),
              Filepage(),
            ],
          ),
        ),
      ),
    );
  }
}