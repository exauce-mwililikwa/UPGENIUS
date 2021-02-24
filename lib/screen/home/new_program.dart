import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class NewProgram extends StatefulWidget {
  @override
  _NewProgramState createState() => _NewProgramState();
}

var ut = Utils();

class _NewProgramState extends State<NewProgram> {
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
              ut.appbarC(context, _scaffoldKey,"NOUVEAU PROGRAMME"),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 12),
                          child: Text(
                            'Entrer le code du travail ici',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 23, right: 23),
                        child: Row(
                          children: [
                            Container(
                              //    margin: EdgeInsets.only(left: 12),
                              child: Expanded(
                                child: TextField(),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              //         margin: EdgeInsets.only(left: 12),
                              child: Expanded(
                                child: TextField(),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              //      margin: EdgeInsets.only(left: 12),
                              child: Expanded(
                                child: TextField(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        child: FlatButton(
                          onPressed: null,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 12, right: 12, top: 12, bottom: 12),
                            color: Colors.lightBlue,
                            child: Text(
                              'SAUVEGARDER',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
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
