import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/services.dart';
// import 'package:upGenius/screen/home/dashboard.dart';
import 'package:upGenius/screen/home/dashboard1.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  static String rootName = "/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TapGestureRecognizer signRecognizer;
  @override
  void initState() {
    signRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SignUp();
            },
          ),
        );
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     statusBarColor: Color(0XFFF5F5F5),
    //     statusBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Color(0XFFF5F5F5),
    //   ),
    // );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          child: Column(
            children: [
              _signInAppBar(),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 5,
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  offset: Offset(0, 3),
                                  //permet de definir la direction de l'ombrage
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFC700).withOpacity(.5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Text(
                          'Upgenius', //motdepasseupdeV000
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          // TextAlign.center,
                          'Entrer votre identifiant et votre mot de passe pour vous connectez',
                          style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                            color: Colors.grey[500],
                          )),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey[500],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Identifiant',
                                    labelStyle: GoogleFonts.dmSans(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: Colors.grey[500],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Mot de passe',
                                    labelStyle: GoogleFonts.dmSans(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Color(0xFFFFC700).withOpacity(.5),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Dashboard1();
                                },
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // Spacer(),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "N'avez-vous pas un compte? ",
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: "Créer un",
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                          color: Color(0xFFFFC700).withOpacity(.5),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      recognizer: signRecognizer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _signInAppBar() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          "Connexion",
          style: GoogleFonts.dmSans(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
