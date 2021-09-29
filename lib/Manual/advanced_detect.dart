import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Advanceddetect extends StatefulWidget {
  @override
  _Advanceddetect createState() => _Advanceddetect();
}

class _Advanceddetect extends State<Advanceddetect> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              child: Column(children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    //  padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: InkWell(
                      onTap: () => setState(() {
                        _launched =
                            _launchInBrowser('http://fotoforensics.com/');
                      }),
                      child: Image.asset(
                        'photo/a1.jpg',
                        width: 410,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    //  padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: InkWell(
                      onTap: () => setState(() {
                        _launched =
                            _launchInBrowser('https://ampedsoftware.com/authenticate');
                      }),
                      child: Image.asset(
                        'photo/a3.jpg',
                        width: 410,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    //  padding : EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: InkWell(
                      onTap: () => setState(() {
                        _launched =
                            _launchInBrowser('https://29a.ch/photo-forensics/#forensic-magnifier');
                      }),
                      child: Image.asset(
                        'photo/a2.jpg',
                        width: 410,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
