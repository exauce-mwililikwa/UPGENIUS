import 'package:flutter/material.dart';
import 'package:upGenius/screen/home/list_progam.dart';

import 'profil.dart';
import 'dash_questionaire.dart';
import 'list_questionnaire.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  List<String> images = [
    "Surprised_96px.png",
    "Book_96px.png",
    "Gallery_96px.png",
    "Literature_96px.png",
    "Windows XP_96px.png",
  ];

  List<String> cours = [
    "Programation",
    "Mathematique",
    "Logique",
    "Education",
    "Autres",
  ];

  List<int> nombre = [3, 8, 10, 20, 1];
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //top: false,
      child: Scaffold(
        key: _scaffoldKey,
        //  appBar: AppBar(),
        drawer: Drawer(
          child: SizedBox(
            width: 150,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(top: 24),
                        //width: 150,
                        height: MediaQuery.of(context).size.height / 2.7,
                        color: Colors.red,
                        // child: Text('Parametre'),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.3,
                        child: Column(
                          children: [
                            ButtonBar(
                              children: [
                                RaisedButton(
                                  color: Theme.of(context).accentColor,
                                  onPressed: () {
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
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      'Mon Programme',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  }),

              Container(
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 34),
                // margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Exauce mwililikwa',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: Text('Etudiant',
                                      textAlign: TextAlign.left)),
                            ],
                          ),
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Profil();
                                  },
                                ),
                              );
                            },
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profil.png'),
                              //     Image.asset('assets/images/profil.png'),
                            ),
                          ),
                          //    width: MediaQuery.of(context).size.width / 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Wrap(
                        children: List.generate(
                          cours.length,
                          (index) => typetext(
                              cours[index], images[index], nombre[index]),
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

  Widget typetext(String typeName, String photo, int nombreQuestion) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),

      //height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2 - 20,
      decoration: BoxDecoration(
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
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Container(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DashQuestionnaire();
                },
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 20),
            child: Column(
              children: [
                Container(
                  height: 44,
                  width: 74,
                  child: Image.asset(
                    "assets/images/$photo",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Text(
                    typeName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Text(
                    '$nombreQuestion Question',
                    style: TextStyle(
                      color: Colors.black87,
                      //fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
