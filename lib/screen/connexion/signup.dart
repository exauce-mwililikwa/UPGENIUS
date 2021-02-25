import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upGenius/screen/connexion/login.dart';

class SignUp extends StatefulWidget {
  static String routeName = "/signup";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TapGestureRecognizer signupRecognizer;
  @override
  void initState() {
    signupRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Login();
            },
          ),
        );
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            _signAppBar(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      openWords(),
                      SizedBox(
                        height: 30,
                      ),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Indentités",
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            _textForm(hint: "Noms complet"),
                            _textForm(hint: "Adresse mail"),
                            _textForm(hint: "Profession"),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Connexion",
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            _textForm(hint: "identifiant"),
                            _passWord(hint: "Mot de passe"),
                            Text(
                              "Autres",
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            _phoneNumber(hint: "contacts"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text.rich(
                        TextSpan(
                          text: "Avez vous déjà un compte? ",
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: "Connectez-vous",
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFC700).withOpacity(.5),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              recognizer: signupRecognizer,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _signAppBar() {
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
          "Inscription",
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

  openWords() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Inscrivez vous",
                style: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Pour decouvrir plus de fonctonalite de upgenius",
                style: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _passWord({
    TextEditingController controller,
    String hint,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: .5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                labelText: hint,
                labelStyle: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _textForm({
    TextEditingController controller,
    String hint,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: .5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: hint,
                labelStyle: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _phoneNumber({
    TextEditingController controller,
    String hint,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: .5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: hint,
                labelStyle: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
