import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class NewProgramme extends StatefulWidget {
  @override
  _NewProgrammeState createState() => _NewProgrammeState();
}

var ut = Utils();

class _NewProgrammeState extends State<NewProgramme> {
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
              ut.appbarC(context, _scaffoldKey, "CREATION"),
              Container(
                // margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Question_64.png"),
                          ),
                          Container(
                            child: Text(
                                "Completer tout le champs pour valider l'operation"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            child: Row(
                              children: [
                                /// child: Text('data'),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nombre de participants',
                                      hintText: 'Participants',
                                    ),
                                    autofocus: false,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nombre de questions',
                                      hintText: 'Questions',
                                    ),
                                    autofocus: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Denominations',
                                hintText: 'Denominations',
                              ),
                              autofocus: false,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    showDatePicker(
                                        context: context,
                                        initialDate: DateTime(2021, 5),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime(2021, 10));
                                  },
                                  child: Container(
                                    child: Text('tukor'),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
