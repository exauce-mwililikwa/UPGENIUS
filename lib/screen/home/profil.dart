import 'package:flutter/material.dart';
import 'package:upGenius/screen/home/dashboard1.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3,
                        color: Colors.red,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Dashboard1();
                                          },
                                        ),
                                      );
                                    },
                                    child: Icon(Icons.arrow_back)),
                                Container(),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 2.8,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profil.png'),
                                child: Container(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        left:
                                            MediaQuery.of(context).size.height /
                                                7),
                                    child: Icon(
                                      Icons.camera_enhance,
                                      color: Colors.blue,
                                    )),

                                //     Image.asset('assets/images/profil.png'),
                              ),
                            ),
                            Container(
                              child: Text(
                                'EXAUCE MWILILIKWA EXAUCE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            FlatButton(
                              color: Colors.blueAccent,
                              onPressed: () {
                                /*...*/
                              },
                              child: Text(
                                "MA TACHE",
                              ),
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
