import 'package:exif/exif.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'afterscanimage.dart';
import 'package:tflite/tflite.dart';
import 'package:metadata/metadata.dart' as md;

class Detect extends StatefulWidget {
  @override
  _Detect createState() => _Detect();
}

class _Detect extends State<Detect> {
  File _image;
  List _output;
  double percentage;
  var data;
  //var loading=true; must find this if error in 35th line after output set that true

  loadModel() async {
    //this function loads our model
    await Tflite.loadModel(
        model: 'photo/modelv2.tflite', labels: 'photo/label.txt');
  }

  classifyImage(File image) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2, //the amout of categories our neural network can predict
    );
    setState(() {
      _output = output;
      percentage = _output[0]['confidence']/50;

    });
  }

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
    Tflite.close();
  }

  var content;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
    classifyImage(_image);
    var file = _image.path;
    var bytes = File(file).readAsBytesSync();

    var result = md.MetaData.exifData(bytes);
    if (result.error == null) {
      content = result.exifData; // exif data is available in contents
    } else {
      print('File: $image.jpg, Error: ${result.error}');
    }
  }

  void _sendDataToSecondScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyProgressIndicator(d_v: percentage,meta:content),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 660,
              padding: EdgeInsets.all(15.0),
              child: Positioned.fill(
                child: _image == null
                    ? Center(
                        child: Text('No Image Selected.',
                            style:
                                TextStyle(fontFamily: 'Code128', fontSize: 25.0)))
                    : new Image.file(_image),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 280,
                  child: FlatButton(
                    onPressed: () {
                      _sendDataToSecondScreen(context);
                    },
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Text('Scan Image'),
                    color: Colors.white,
                    splashColor: Colors.blue,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 80,
                  child: FloatingActionButton(
                    onPressed: getImage,
                    tooltip: 'Pick Image',
                    child: new Icon(Icons.add_a_photo),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
