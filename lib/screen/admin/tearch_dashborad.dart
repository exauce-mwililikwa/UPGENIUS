import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upGenius/screen/admin/new_programme.dart';
import 'package:upGenius/screen/utils/utils.dart';
import 'mes_programmes.dart';

class TeacherDashboard extends StatefulWidget {
  @override
  _TeacherDashboardState createState() => _TeacherDashboardState();
}

var ut = Utils();
String dropdownValue = 'One';

class _TeacherDashboardState extends State<TeacherDashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  AlignmentGeometry _alignment = Alignment.topRight;
  bool _value = true;
  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
              'Allow "Maps" to access your location while you use the app?'),
          content: Text(
              'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Don\'t Allow'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('Allow'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: ut.dropMenu(context),
        body: Container(
          child: Column(
            children: [
              ut.appbarC(context, _scaffoldKey, "ACCEUIL"),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
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
                                width:
                                    MediaQuery.of(context).size.width / 2 - 5,
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
                                width:
                                    MediaQuery.of(context).size.width / 2 - 5,
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: InkWell(
                            child: Text('Click me'),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 70.0,
                                    child: Center(
                                      child: Text(
                                        "Voulez-vous vraiment supprimer l'utilisateur ",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Annuler'),
                                    ),
                                    // FlatButton(
                                    //   onPressed: () async {
                                    //     user.destroy('users', id: user.id);
                                    //     setState(() {});
                                    //     Navigator.pop(context);
                                    //   },
                                    //   child: Text(
                                    //     'Supprimer',
                                    //     style: TextStyle(color: Colors.red),
                                    //   ),
                                    // )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 120.0,
                          width: 120.0,
                          color: Colors.blue[50],
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FlutterLogo(
                              size: 60,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 120.0,
                              width: 120.0,
                              color: Colors.blue[50],
                              child: AnimatedAlign(
                                alignment: _alignment,
                                curve: Curves.ease,
                                duration: Duration(seconds: 3),
                                child: FlutterLogo(
                                  size: 60,
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                _changeAlignment();
                              },
                              child: Text(
                                "Click Me!",
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: RaisedButton(
                            child: const Text('SHOW BOTTOM SHEET'),
                            onPressed: () {
                              showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Text(
                                          'This is the modal bottom sheet. Slide down to dismiss.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).accentColor,
                                            fontSize: 24.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                        Container(
                          child: Checkbox(
                            value: _value,
                            onChanged: (bool newValue) {
                              setState(() {
                                _value = newValue;
                              });
                            },
                          ),
                        ),
                        CircularProgressIndicator(),
                        CupertinoActionSheet(
                          title: Text('Favorite Dessert'),
                          message: Text(
                              'Please select the best dessert from the options below.'),
                          actions: <Widget>[
                            CupertinoActionSheetAction(
                              child: Text('Profiteroles'),
                              onPressed: () {
                                _handleClickMe();
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: Text('Cannolis'),
                              onPressed: () {/** */},
                            ),
                            CupertinoActionSheetAction(
                              child: Text('Trifie'),
                              onPressed: () {/** */},
                            ),
                          ],
                          cancelButton: CupertinoActionSheetAction(
                            isDefaultAction: true,
                            child: Text('Cancel'),
                            onPressed: () {/** */},
                          ),
                        ),
                        CupertinoActivityIndicator(),
                        CupertinoContextMenu(
                          child: Container(
                            width: 100,
                            height: 60,
                            color: Colors.red,
                          ),
                          actions: <Widget>[
                            CupertinoContextMenuAction(
                              child: const Text('Action one'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('Action two'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        Container(
                          height: 300,
                          child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.dateAndTime,
                              onDateTimeChanged: (dateTime) {}),
                        ),
                        Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
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
