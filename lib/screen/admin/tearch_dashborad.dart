import 'package:flutter/material.dart';
import 'package:upGenius/screen/admin/new_programme.dart';
import 'package:upGenius/screen/utils/utils.dart';
import 'mes_programmes.dart';

class TeacherDashboard extends StatefulWidget {
  @override
  _TeacherDashboardState createState() => _TeacherDashboardState();
}

var ut = Utils();

class _TeacherDashboardState extends State<TeacherDashboard> {
  @override
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: ut.dropMenu(context),
        body: Container(
          child: Column(
            children: [
              ut.appbarC(context, _scaffoldKey, "ACCEUIL"),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Idea_96px.png"),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Contribuer aux savoir',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Etablissez un programme qui poura etre benefique aux apprenants ...',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 29),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width / 2 - 5,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return NewProgramme();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  'Creer un programme',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            width: MediaQuery.of(context).size.width / 2 - 5,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return MesQuestionnaire();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  'Voir mes programmes',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          )
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
