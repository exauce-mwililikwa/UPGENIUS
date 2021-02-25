import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upGenius/screen/connexion/login.dart';
import 'package:upGenius/screen/connexion/signup.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Color(0XFF00589E),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0XFF00589E),
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 150,
                          child: SvgPicture.asset("assets/svg/intro.svg"),
                        ),
                        Text(
                          "Bievenu dans notre plate forme de cours upgenius, inscrivez-vous ou connectez-vous pour plus de fonctionnalites de upgenius",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        boutonModal(
                          title: "Connexion",
                          color: Color(0xFFFFC700).withOpacity(.5),
                          onPressed: () {
                            Navigator.pushNamed(context, Login.rootName);
                          },
                        ),
                        Text(
                          "ou",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        boutonModal(
                          title: "Inscription",
                          color: Color(0XFF5672F4),
                          onPressed: () {
                            Navigator.pushNamed(context, SignUp.routeName);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "UPGENIUS",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    "@copyright2021",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget boutonModal(
      {@required String title, Function onPressed, Color color}) {
    return FlatButton(
        color: color,
        onPressed: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.dmSans(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
