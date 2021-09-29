import 'package:flutter/material.dart';
import 'Screen2.dart';

class Filepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit:StackFit.expand,
      children: [
        Container(
          child: Image.asset(
            'photo/18963121.jpg',
            width:410,
            fit: BoxFit.cover,
          )
        ),
        Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Text('Generate Certificate & Report'),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
