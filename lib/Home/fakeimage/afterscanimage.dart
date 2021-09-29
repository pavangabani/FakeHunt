import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressIndicator extends StatefulWidget {
  double d_v2;
  var meta2;

  MyProgressIndicator({double d_v = 0.0, meta}) {
    d_v2 = d_v;
    meta2 = meta;
  }

  @override
  _MyProgressIndicator createState() => _MyProgressIndicator(d_v2, meta2);
}

class _MyProgressIndicator extends State<MyProgressIndicator> {
  double _dgpercentage;
  var smeta;

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    setState(() {});
  }

  @override
  _MyProgressIndicator(double _value, meta) {
    smeta = meta;
    if (_value > 100) {
      _dgpercentage = 100;
    } else {
      _dgpercentage = double.parse((_value).toStringAsFixed(2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Analysis', style: TextStyle(fontFamily: 'Raleway')),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment:Alignment.center,
                height: 100,
                child: Text('Confidence',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 25)),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: CircularPercentIndicator(
                    //circular progress indicator
                    radius: 120.0,
                    //radius for circle
                    lineWidth: 15.0,
                    //width of circle line
                    animation: true,
                    //animate when it shows progress indicator first
                    percent: _dgpercentage / 100,
                    //vercentage value: 0.6 for 60% (60/100 = 0.6)
                    center: Text(
                      _dgpercentage.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    //center text, you can set Icon as well
                    //footer text
                    backgroundColor: Colors.lightGreen[300],
                    //backround of progress bar
                    circularStrokeCap: CircularStrokeCap.round,
                    //corner shape of progress bar at start/end
                    progressColor: Colors.redAccent, //progress bar color
                  )),
              Container(
                  alignment:Alignment.center,
                  height: 100,
                  child: Text(
                    "Accuracy Of Model",
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 25),
                  )),
              Container(
                width: 410,
                height: 100,
                alignment:Alignment.center,
                padding: EdgeInsets.all(10),
                child: LinearPercentIndicator(
                  //leaner progress bar
                  width: 390,
                  //width for progress bar
                  animation: true,
                  //animation to show progress at first
                  animationDuration: 5000,
                  lineHeight: 30.0,
                  //height of progress bar
                  percent: 0.92,
                  // 30/100 = 0.3
                  center: Text("92%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  //make round cap at start and end both
                  progressColor: Colors.redAccent,
                  //percentage progress bar color
                  backgroundColor:
                      Colors.orange[100], //background progressbar color
                ),
              ),
              Container(
                  alignment:Alignment.center,
                  height: 100,
                  child: Text(
                    "Analysis of Image Metadata",
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 25.0),
                  )),
              Container(
                color: Colors.lightBlue,
                height: 100,
                width: 410,
                child: Center(
                  child: Container(
                    child: smeta != null
                        ? Text(
                            "Edited in : ${smeta['image']['Software']}",
                            style: TextStyle(
                                fontFamily: 'Raleway', fontSize: 30.0),
                          )
                        : Text('Not Usefull Datafound',
                            style: TextStyle(fontFamily: 'Raleway')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
