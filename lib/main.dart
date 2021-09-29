import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Login/main_AL.dart';
import 'Login/Login.dart';
import 'Login/SignUp.dart';
import 'Login/Start.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(MyApp());
   }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent
      ),
      debugShowCheckedModeBanner: false,
      home: 
    
      main_al(),

      routes: <String,WidgetBuilder>{

        "Login" : (BuildContext context)=>Login(),
        "SignUp":(BuildContext context)=>SignUp(),
        "start":(BuildContext context)=>Start(),
      },
      
    );
  }

}



