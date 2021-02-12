import 'package:flutter/material.dart';
import 'package:upGenius/screen/connexion/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: ListView(
            children: [
              Container(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Login();
                                      },
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              // child: Icon(
                              //   Icons.arrow_back,

                              //   color: Colors.white,
                              // ),
                            ),
                            Container(
                              child: Text(
                                'SIgn Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 33,
                                ),
                              ),
                            ),
                            Container(
                              height: 20.0,
                              width: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Nom',
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Postnom',
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Mot de passe',
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
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
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Confimer le mot de passe',
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 25),
                              child: RaisedButton(
                                color: Theme.of(context).accentColor,
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Already have any account?'),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
