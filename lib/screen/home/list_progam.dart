import 'package:flutter/material.dart';

class ListeProgram extends StatefulWidget {
  @override
  _ListeProgramState createState() => _ListeProgramState();
}

class _ListeProgramState extends State<ListeProgram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(left: 5, right: 5, bottom: 34),
                // margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(27),
                              bottomRight: Radius.circular(27),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              //border: InputBorder.none,
                                              labelText: 'Rechercher ici',
                                              labelStyle: TextStyle(
                                                color: Colors.white,
                                                // fontWeight: FontWeight.bold,
                                                //  color: Colors.black45,
                                                fontSize: 10,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Container(child: Icon(Icons.search)),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Text(
                                  'MON PROGRAMME',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 18,
                                                  child: Image.asset(
                                                    "assets/images/Briefcase_48px.png",
                                                  ),
                                                ),
                                                Container(
                                                    child: Text(
                                                  ' 1 024',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 18,
                                                  child: Image.asset(
                                                    "assets/images/No Baggage_48px.png",
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    ' 250',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
