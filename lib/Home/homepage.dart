import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'fakeaudio/fakeaudio_main.dart';
import 'fakeimage/fakeimage_main.dart';
import 'fakevideo/fakevideo_main.dart';

class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Fake Hunt', style: TextStyle(fontFamily: 'Raleway')),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Container(
                child: Column(children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                        //padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: InkWell(
                            onTap: () =>
                                setState(() {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Fakeimage()));
                                }),
                            child: Image.asset(
                              'photo/image.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                         //padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: InkWell(
                            onTap: () =>
                                setState(() {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Fakeaudio()));
                                }),
                            child: Image.asset(
                              'photo/audio.jpg',
                              width: 410,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Container(
                          // padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: InkWell(
                            onTap: () =>
                                setState(() {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Fakevideo()));
                                }),
                            child: Image.asset(
                              'photo/video.jpg',
                              width: 410,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
