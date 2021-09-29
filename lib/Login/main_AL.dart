import 'package:fake_image_detection/Profile/Profile.dart';
import 'package:fake_image_detection/Home/homepage.dart';
import 'package:fake_image_detection/Manual/advance_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class main_al extends StatefulWidget {
  @override
  _main_al createState() => _main_al();
}

class _main_al extends State<main_al> {
  int _selectedIndex = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    AdvancedDetectMain(),
    Profile(),
  ];

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }
  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.home,
              color: Colors.black,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              FontAwesome.home,
              color: Colors.lightBlueAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.adjust,
              color: Colors.black,

            ),
            title: Text('ADVANCED'),
            activeIcon: Icon(
              FontAwesome.adjust,
              color: Colors.lightBlueAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.user_circle_o,
              color: Colors.black,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              FontAwesome.user_circle_o,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
