import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upGenius/screen/connexion/login.dart';
import 'package:upGenius/screen/connexion/signup.dart';

import 'package:upGenius/screen/intro/intro.dart';

class UpGenius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Color(0XFFF5F5F5),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        primaryColor: Color(0XFF00589E),
      ),
      home: IntroPage(),
      routes: {
        Login.rootName: (context) => Login(),
        SignUp.routeName: (context)=> SignUp(),
      },
    );
  }
}
