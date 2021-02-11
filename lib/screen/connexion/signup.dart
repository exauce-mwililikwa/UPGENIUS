import 'package:flutter/material.dart';

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
          child: Column(
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
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
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
                                    labelText: 'Firstname',
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
                                    labelText: 'Lastname',
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
                                    labelText: 'Password',
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
                                    labelText: 'Confirm password',
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
