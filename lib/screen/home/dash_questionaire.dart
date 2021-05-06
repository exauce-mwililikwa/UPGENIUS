import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class DashQuestionnaire extends StatefulWidget {
  @override
  _DashQuestionnaireState createState() => _DashQuestionnaireState();
}

var ut = Utils();

class _DashQuestionnaireState extends State<DashQuestionnaire> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: ut.dropMenu(context),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ut.appbarC(context, _scaffoldKey, "MACABBETS"),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.blueAccent,
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(27),
              //       bottomRight: Radius.circular(27),
              //     ),
              //   ),
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height / 3.5,
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   child: Column(
              //     children: [
              //       Container(
              //         child: Row(
              //           children: [
              //             Expanded(
              //               child: Container(
              //                 child: TextField(
              //                   decoration: InputDecoration(
              //                       //border: InputBorder.none,
              //                       labelText: 'Rechercher ici',
              //                       labelStyle: TextStyle(
              //                         color: Colors.white,
              //                         // fontWeight: FontWeight.bold,
              //                         //  color: Colors.black45,
              //                         fontSize: 10,
              //                       )),
              //                 ),
              //               ),
              //             ),
              //             Container(child: Icon(Icons.search)),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         height: 12,
              //       ),
              //       Container(
              //         child: Text(
              //           'Programmation',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 14,
              //             fontWeight: FontWeight.bold,
              //           ),
              //           //style: TextStyle(),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 12,
              //       ),
              //       Container(
              //         child: Row(
              //           children: [
              //             Container(
              //               margin: EdgeInsets.only(right: 65),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     '1 150',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 12,
              //                   ),
              //                   Text(
              //                     'Cours',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //////////////////////////////.///////        Container(
              //               margin: EdgeInsets.only(right: 45),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     '150',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 12,
              //                   ),
              //                   Text(
              //                     'Proffesseurs',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Container(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     '1 150',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 12,
              //                   ),
              //                   Text(
              //                     'Questions',
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 14,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                height: 35,
                padding: EdgeInsets.only(left: 20, right: 0),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                  bottom: 5,
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
                            width: MediaQuery.of(context).size.width / 9,
                            height: MediaQuery.of(context).size.height / 20,
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
              Expanded(
                  child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        ut.travail(
                            "Html 5_48px.png",
                            "14/02/2006",
                            "02:43:43",
                            "Prince Balolange",
                            2500,
                            43,
                            1240,
                            context,
                            "INTERROGATION DE RATTRAPAGE"),
                        ut.travail(
                            "Android OS_48px.png",
                            "14/02/2006",
                            "02:43:43",
                            "Mutindiapala Mwililikwa",
                            200,
                            23,
                            140,
                            context,
                            "EXAMEN DE DEUXIEME SESSION"),
                        ut.travail(
                            "HTML_Filetype_48px.png",
                            "14/02/2006",
                            "02:43:43",
                            "Bahonga Pacifique",
                            500,
                            43,
                            1240,
                            context,
                            "EXAMEN D'ADMINSSION"),
                        ut.travail(
                            "Java_48px.png",
                            "14/02/2006",
                            "12:43:43",
                            "Prince Balolange",
                            2500,
                            43,
                            1240,
                            context,
                            "EXERCICE A DOMICILE"),
                        ut.travail(
                            "JS_48px.png",
                            "14/02/2006",
                            "22:13:43",
                            "Joel Kango",
                            20,
                            12,
                            140,
                            context,
                            "DEVOIR CORRIGER"),
                        ut.travail(
                            "PHP_48px.png",
                            "14/02/2006",
                            "12:33:23",
                            "Dan Dan",
                            250,
                            43,
                            140,
                            context,
                            "INTERROGATION EN LIGNE"),
                        ut.travail(
                            "Python_48px.png",
                            "14/02/2006",
                            "09:23:23",
                            "Joseph Kalema",
                            200,
                            23,
                            40,
                            context,
                            "TEST D'ADMISSION HCR"),
                        ut.travail(
                            "Html 5_48px.png",
                            "14/02/2006",
                            "12:23:23",
                            "Prince Balolange",
                            2500,
                            43,
                            1240,
                            context,
                            "EXAMEN DE CONTROL MSF"),
                        ut.travail(
                            "Code File_48px.png",
                            "14/02/2006",
                            "02:43:43",
                            "Gael Kikumi",
                            2500,
                            43,
                            1240,
                            context,
                            "INTERROGATION DE REGULARISATION"),
                        ut.travail(
                            "Html 5_48px.png",
                            "14/02/2006",
                            "12:13:03",
                            "Dav David",
                            2500,
                            43,
                            1240,
                            context,
                            "EXERCICE DE NIVEAU"),
                        ut.travail(
                            "Html 5_48px.png",
                            "14/02/2006",
                            "12:23:13",
                            "Kevine Musodolwa",
                            2500,
                            43,
                            1240,
                            context,
                            "DEVOIR NUMERO 2"),
                        ut.travail(
                            "PHP_48px.png",
                            "14/02/2006",
                            "12:53:23",
                            "Joel Katoro",
                            2500,
                            43,
                            1240,
                            context,
                            "EXERCICE DE CONTROLE"),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        'Previous',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        'Next',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 42,
                              ),
                              // Container(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
