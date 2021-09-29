import 'package:flutter/material.dart';
import 'sendimage.dart';
import 'advanced_detect.dart';
import 'how.dart';


class AdvancedDetectMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Advanced Detect',style: TextStyle(fontFamily: 'Raleway')),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image_search_rounded)),
                Tab(icon: Icon(Icons.maps_ugc_rounded)),
                Tab(icon: Icon(Icons.info_outline)),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Advanceddetect(),
              SendImage(),
              How(),

            ],
          ),
        ),
      ),
    );
  }
}