import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:upGenius/screen/home/dashboard1.dart';
import 'package:upGenius/screen/home/list_questionnaire.dart';
import 'package:upGenius/screen/admin/tearch_dashborad.dart';
import 'package:upGenius/screen/home/list_progam.dart';

var ut = Utils();

class Utils {
//  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget appbarC(BuildContext context, GlobalKey<ScaffoldState> _scaffoldKey,
      String titre) {
    return Container(
      //  key: _scaffoldKey,

      // color: Colors.redAccent,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 85),
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width / 5,
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(
                Icons.menu_rounded,
                size: MediaQuery.of(context).size.width / 12,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 5 * 3,
            child: Text(
              '$titre',
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width / 14),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            alignment: Alignment.topRight,
            child: Row(
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
                    child: Icon(Icons.home, color: Colors.black)),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/avtar-1.png'),
                  //     Image.asset('assets/images/profil.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dropMenu(BuildContext context) {
    return Container(
      color: Colors.white,
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.2,
      //height: 12,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white38,
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/avtar-1.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        'Super Admin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          )),
                                      child: Text(
                                        ' Profession ',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 11.8,
                                top: 15,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.admin_panel_settings,
                                    color: Colors.lightBlueAccent,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return TeacherDashboard();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text(
                                      '    Admin',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 15),
                              child: Column(
                                children: [
                                  ut.menu(Icons.add_chart, "Nouveau Programme",
                                      context, Colors.blueAccent),
                                  ut.menu(
                                      Icons.view_agenda_outlined,
                                      "Mes Programmes",
                                      context,
                                      Colors.blueGrey),
                                  ut.menu(Icons.menu_book_sharp, "Mes Cours",
                                      context, Colors.greenAccent),
                                  ut.menu(Icons.account_circle_sharp, "Compte",
                                      context, Colors.tealAccent),
                                  ut.menu(Icons.settings, "Parametre", context,
                                      Colors.pinkAccent),
                                  ut.menu(Icons.lock_outlined, "Deconnexion",
                                      context, Colors.black38),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Upgenius pour Android v1.0.0',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }

  Widget menu(IconData icon, String text, BuildContext context, Color couleur) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ListeProgram();
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Icon(icon, size: 20, color: couleur),
              SizedBox(
                width: 19,
              ),
              Text(
                "$text",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget monProgramme(
      BuildContext context,
      String image,
      String cours,
      String date,
      String heure,
      int question,
      int partipant,
      int temps,
      String nomProf,
      String photoProf) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 3),
              blurRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      margin: EdgeInsets.only(top: 6, left: 10, right: 10),
      padding: EdgeInsets.only(right: 6),
      //  width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height / 2.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 1),
            child: Row(
              children: [
                Container(
                  child: Image.asset("assets/images/$image"),
                ),
                Container(
                  child: Text(
                    '$cours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
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
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 12,
                      ),
                      Text('$date  '),
                      Icon(
                        Icons.timer,
                        size: 12,
                      ),
                      Text(' $heure'),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 39,
                  ),
                  color: Colors.black12,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 20,
                        width: MediaQuery.of(context).size.width / 20,
                        child: Image.asset(
                            "assets/images/Safety Collection Place_48px.png"),
                      ),
                      Container(
                        child: Text('$partipant'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 39,
                  ),
                  color: Colors.black12,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 20,
                        width: MediaQuery.of(context).size.width / 20,
                        child: Image.asset("assets/images/Clock_48px.png"),
                      ),
                      Container(
                        child: Text('$temps'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 39,
                  ),
                  color: Colors.black12,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width / 20,
                        width: MediaQuery.of(context).size.width / 20,
                        child: Image.asset("assets/images/Questions_48px.png"),
                      ),
                      Container(
                        child: Text('$question'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text('Reussi:'),
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, top: 5),
            child: Row(
              children: [
                Text('Auteur : '),
                Text(
                  '$nomProf',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 1.5),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  //ss  margin: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/$photoProf'),
                    //     Image.asset('assets/images/profil.png'),
                  ),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 5),
                    child: Icon(Icons.arrow_right_alt_outlined)),
              ],
            ),
          ),
          //  SizedBox(height: 2),
        ],
      ),
    );
  }

  Widget question(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 11, bottom: 5.5),
      padding: EdgeInsets.only(left: 9, right: 9, top: 6, bottom: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 3),
              blurRadius: 3,
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 3),
              blurRadius: 3,
            )
          ]),
      child: Column(
        children: [
          Container(
            child: Text(
                'Comment peut t\'on disposer les element dans un container possedant beaucoup d\'element pouvant flotter ?'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 34) / 4,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 1_64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('marin'),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 34) / 4,
                  child: Row(
                    children: [
                      Image.asset("assets/images/Circled 1_64px.png",
                          height: 12, width: 12, color: Colors.greenAccent),
                      Text('Shadow'),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 34) / 4,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 3 _64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('padding'),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 34) / 4,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 4_64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('median'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget travail(
      String icon,
      String date,
      String heure,
      String prof,
      int participant,
      int question,
      int reussite,
      BuildContext context,
      String motif) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
      padding: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(19),
            bottomLeft: Radius.circular(19),
            topRight: Radius.circular(19),
            bottomRight: Radius.circular(19),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(3, 6),
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(3, 6),
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset('assets/images/$icon'),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 12,
                      ),
                      Text('$date'),
                      SizedBox(
                        width: 22,
                      ),
                      Icon(
                        Icons.timer,
                        size: 12,
                      ),
                      Text(
                        '$heure',
                        // textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$motif',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.person_rounded,
                                color: Colors.black45,
                                size: 12,
                              ),
                            ),
                            Container(
                              child: Text(
                                '$participant',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.question_answer,
                                color: Colors.black45,
                                size: 12,
                              ),
                            ),
                            Container(
                              child: Text(
                                ' $question',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.verified,
                                color: Colors.black45,
                                size: 12,
                              ),
                            ),
                            Container(
                              child: Text(
                                '$reussite',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$prof',
                    style: TextStyle(
                        //  fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    margin: EdgeInsets.only(left: 125),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ListQuestionnaire();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Consulter...',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
