import 'package:flutter/material.dart';
import 'package:upGenius/screen/connexion/login.dart';

class UpGenius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
