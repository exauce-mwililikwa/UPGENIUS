import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class MesQuestionnaire extends StatefulWidget {
  @override
  _MesQuestionnaireState createState() => _MesQuestionnaireState();
}

var ut = Utils();

class _MesQuestionnaireState extends State<MesQuestionnaire> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: ut.dropMenu(context),
        body: Container(
          child: Column(
            children: [
              ut.appbarC(context, _scaffoldKey, "MES DEVOIRES"),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(top: 9, left: 5, right: 5, bottom: 9),
                      margin: EdgeInsets.only(left: 5, right: 5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey[
                                  300], //.withOpacity(.5),//permet de definir la couleur de l'ombre
                              offset: Offset(0,
                                  3), //permet de definir la direction de l'ombrage
                              blurRadius: 5,
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                      ),
                                      Text(
                                        '12/11/2010',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.timer),
                                      Text('12:30:54',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Dans deux jours',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 43,
                                  width: 43,
                                  child: Image.asset(
                                      "assets/images/Linux_96px.png"),
                                ),
                                Container(
                                  child: Text(
                                    'C S S',
                                    style: TextStyle(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 10,
                                child: InkWell(
                                    child: Text(
                                  'Participants 8',
                                  style: TextStyle(color: Colors.blue),
                                )),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 10,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.group,
                                              color: Colors.lightGreen,
                                              size: 14,
                                            ),
                                          ),
                                          Container(
                                            child: Text('22'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          30,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.question_answer,
                                              size: 14,
                                              color: Colors.deepPurpleAccent,
                                            ),
                                          ),
                                          Container(
                                            child: Text('12'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: InkWell(
                                child: Text(
                              'Details...',
                              style: TextStyle(color: Colors.lightBlue),
                            )),
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
    );
  }
}
