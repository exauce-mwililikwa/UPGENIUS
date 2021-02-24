import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';
import 'new_program.dart';

class ListeProgram extends StatefulWidget {
  @override
  _ListeProgramState createState() => _ListeProgramState();
}

var ut = Utils();

class _ListeProgramState extends State<ListeProgram> {
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
              ut.appbarC(context, _scaffoldKey, "MON PROGRAMME"),

              // Container(
              //   // margin: EdgeInsets.only(left: 5, right: 5, bottom: 34),
              //   // margin: EdgeInsets.all(7),
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           Container(
              //             decoration: BoxDecoration(
              //               color: Colors.blueAccent,
              //               borderRadius: BorderRadius.only(
              //                 bottomLeft: Radius.circular(27),
              //                 bottomRight: Radius.circular(27),
              //               ),
              //             ),
              //             width: MediaQuery.of(context).size.width,
              //             height: MediaQuery.of(context).size.height / 3.75,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   padding: EdgeInsets.only(left: 20, right: 20),
              //                   child: Row(
              //                     children: [
              //                       Expanded(
              //                         child: Container(
              //                           child: TextField(
              //                             decoration: InputDecoration(
              //                                 //border: InputBorder.none,
              //                                 labelText: 'Rechercher ici',
              //                                 labelStyle: TextStyle(
              //                                   color: Colors.white,
              //                                   // fontWeight: FontWeight.bold,
              //                                   //  color: Colors.black45,
              //                                   fontSize: 10,
              //                                 )),
              //                           ),
              //                         ),
              //                       ),
              //                       Container(child: Icon(Icons.search)),
              //                     ],
              //                   ),
              //                 ),
              //                 Container(
              //                   padding: EdgeInsets.only(top: 8, bottom: 8),
              //                   child: Text(
              //                     'MON PROGRAMME',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   child: Row(
              //                     children: [
              //                       Container(
              //                         child: Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Container(
              //                               child: Row(
              //                                 children: [
              //                                   Container(
              //                                     height: 18,
              //                                     child: Image.asset(
              //                                       "assets/images/Briefcase_48px.png",
              //                                     ),
              //                                   ),
              //                                   Container(
              //                                       child: Text(
              //                                     ' EFFECTUER  : 1 024',
              //                                     style: TextStyle(
              //                                       color: Colors.white,
              //                                     ),
              //                                   )),
              //                                 ],
              //                               ),
              //                             ),
              //                             Container(
              //                               child: Row(
              //                                 children: [
              //                                   Container(
              //                                     height: 18,
              //                                     child: Image.asset(
              //                                       "assets/images/No Baggage_48px.png",
              //                                     ),
              //                                   ),
              //                                   Container(
              //                                     child: Text(
              //                                       ' EN TTENTE   : 250',
              //                                       style: TextStyle(
              //                                         color: Colors.white,
              //                                       ),
              //                                     ),
              //                                   )
              //                                 ],
              //                               ),
              //                             ),
              //                             Container(
              //                               child: Row(
              //                                 children: [
              //                                   Container(
              //                                     height: 18,
              //                                     child: Image.asset(
              //                                       "assets/images/Ok_48px.png",
              //                                     ),
              //                                   ),
              //                                   Container(
              //                                     child: Text(
              //                                       ' EN COURS: 0',
              //                                       style: TextStyle(
              //                                         color: Colors.white,
              //                                       ),
              //                                     ),
              //                                   )
              //                                 ],
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       Container(),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                child: Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),

                          height: 30.0,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/Html 5_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/Android OS_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/C_Plus_Plus_40px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/HTML_Filetype_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/Html 5_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset("assets/images/JS_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child:
                                    Image.asset("assets/images/Java_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/Code File_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset(
                                    "assets/images/Python_48px.png"),
                              ),
                              Container(
                                width: 40.0,
                                child: Image.asset("assets/images/VB_48px.png"),
                              ),

                              // Container
                            ], // <Widget>[]
                          ), //ListView
                        ),
                        Container(
                          height: 35,
                          padding: EdgeInsets.only(left: 20, right: 0),
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 25,
                            right: MediaQuery.of(context).size.width / 25,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(19),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(3, 2),
                                )
                              ]),

                          //  padding: EdgeInsets.only(left: 22, right: 22),

                          child: Column(
                            children: [
                              // TextField(
                              //   decoration: InputDecoration(
                              //     border: OutlineInputBorder(),
                              //     labelText: 'Enter Name Here',
                              //     hintText: 'Enter Name Here',
                              //   ),
                              //   autofocus: false,
                              // ),
                              Container(
                                height: 35,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Expanded(
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: 'Rechercher ici',
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 9,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      //margin: EdgeInsets.only(left: 32),
                                      // decoration:
                                      //     BoxDecoration(color: Colors.greenAccent),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        ut.monProgramme(
                            context,
                            "Html 5_48px.png",
                            "C S S",
                            "12/11/2003",
                            "12:23:45",
                            15,
                            56,
                            94,
                            "MUTINDOS MWILILIKWA",
                            "avtar-1.png"),
                        ut.monProgramme(
                            context,
                            "Android OS_48px.png",
                            "Android",
                            "22/01/2003",
                            "12:23:45",
                            19,
                            52,
                            74,
                            "Joseph Kalema",
                            "avtar-2.png"),
                        ut.monProgramme(
                            context,
                            "C_Plus_Plus_40px.png",
                            "C + +",
                            "11/11/2005",
                            "12:23:45",
                            15,
                            56,
                            94,
                            "ISSAMUNA KEMBO",
                            "avtar-4.png"),
                        ut.monProgramme(
                            context,
                            "PHP_48px.png",
                            "P H P",
                            "12/11/2003",
                            "12/23/45",
                            15,
                            56,
                            94,
                            "MUTINDOS MWILILIKWA",
                            "téléchargement.png"),
                        ut.monProgramme(
                            context,
                            "Java_48px.png",
                            "JAVA SWING",
                            "12/11/2003",
                            "23:43:45",
                            12,
                            50,
                            43,
                            "AMANI HIRWA",
                            "avtar-8.png"),
                        //Container
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NewProgram();
                },
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
