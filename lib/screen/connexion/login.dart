import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TapGestureRecognizer signRecognizer;
  @override
  void initState() {
    signRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("hey je suis le lien vers sign up");
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height / 5,
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 3),
                                    //permet de definir la direction de l'ombrage
                                    blurRadius: 5,
                                  ),
                                ]),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.only(
                                // topLeft: Radius.circular(80),
                                ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // padding: EdgeInsets.only(top: 1),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 37),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                //    alignment: Alignment.center,
                                child: Text(
                                  // TextAlign.center,
                                  'Entrer votre identifiant et votre mot de passe pour vous connecter',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 15,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey[
                                            300], //.withOpacity(.5),//permet de definir la couleur de l'ombre
                                        offset: Offset(0,
                                            3), //permet de definir la direction de l'ombrage
                                        blurRadius: 5,
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.black38,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: 'Identifiant ',
                                            labelStyle: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.black45,
                                              fontSize: 19,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 15,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey[
                                            300], //.withOpacity(.5),//permet de definir la couleur de l'ombre
                                        offset: Offset(0,
                                            3), //permet de definir la direction de l'ombrage
                                        blurRadius: 5,
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.lock,
                                      color: Colors.black38,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      
                                      child: TextField(
                                        obscureText: true,
                                        // inputFormatters: [
                                        //   new LengthLimitingTextInputFormatter(
                                        //       4),
                                        // ],
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: 'Mot de passe',
                                            labelStyle: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.black45,
                                              fontSize: 19,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12))),
                                padding: EdgeInsets.only(top: 25),
                                child: RaisedButton(
                                  color: Theme.of(context).accentColor,
                                  onPressed: () {},
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
                              ),
                              
                              // Spacer(),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  Text('Avez vous deja un compte?'),
                                  InkWell(
                                    onTap: () {
                                     
                                    },
                                    child: Text(
                                      'Creer',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    
                                  ),
                                  
                                ],
                              )
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
      ),
    );
  }
}
