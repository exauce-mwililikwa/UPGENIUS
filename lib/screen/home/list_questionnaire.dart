import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class ListQuestionnaire extends StatefulWidget {
  @override
  _ListQuestionnaireState createState() => _ListQuestionnaireState();
}

var ut = Utils();

class _ListQuestionnaireState extends State<ListQuestionnaire> {
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
              ut.appbarC(context, _scaffoldKey, "QUESTIONS"),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height / 3.5,
              //   //padding: EdgeInsets.only(left: 15, right: 15),
              //   decoration: BoxDecoration(
              //     color: Colors.blueAccent,
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(27),
              //       bottomRight: Radius.circular(27),
              //     ),
              //   ),
              //   child: Column(
              //     // crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         //     alignment: Alignment.centerRight,
              //         child: Column(
              //           children: [
              //             Container(
              //               child: Image.asset("assets/images/Html 5_48px.png"),
              //             ),
              //             Container(
              //               child: Text('C S S'),
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         height: 8,
              //       ),
              //       Container(
              //         child: Row(
              //           children: [
              //             Container(
              //               width: MediaQuery.of(context).size.width / 2,
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     child: Row(
              //                       children: [
              //                         Container(
              //                           child: Icon(
              //                             Icons.calendar_today,
              //                             color: Colors.white,
              //                             size: 12,
              //                           ),
              //                         ),
              //                         Container(
              //                           child: Text(
              //                             ' 12/06/2001',
              //                             style: TextStyle(
              //                               color: Colors.white,
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   Container(
              //                     child: Row(
              //                       children: [
              //                         Container(
              //                           child: Icon(
              //                             Icons.timer,
              //                             color: Colors.white,
              //                             size: 12,
              //                           ),
              //                         ),
              //                         Container(
              //                           child: Text(
              //                             ' 09:34:23',
              //                             style: TextStyle(
              //                               color: Colors.white,
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   Container(
              //                     child: Row(
              //                       children: [
              //                         Container(
              //                           child: Icon(
              //                             Icons.question_answer_sharp,
              //                             color: Colors.white,
              //                             size: 12,
              //                           ),
              //                         ),
              //                         Container(
              //                           child: Text(
              //                             ' 12',
              //                             style: TextStyle(
              //                               color: Colors.white,
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             Container(
              //                 width: MediaQuery.of(context).size.width / 2,
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Container(
              //                           child: Column(
              //                             crossAxisAlignment:
              //                                 CrossAxisAlignment.end,
              //                             children: [
              //                               Text(
              //                                 'MUTINDIAPALA',
              //                                 style: TextStyle(
              //                                   color: Colors.white,
              //                                 ),
              //                               ),
              //                               Text(
              //                                 'MWILILIKWA',
              //                                 style: TextStyle(
              //                                   color: Colors.white,
              //                                 ),
              //                               ),
              //                               Text(
              //                                 'EXAUCER',
              //                                 style: TextStyle(
              //                                   color: Colors.white,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                         Container(
              //                           child: Column(
              //                             children: [
              //                               Container(
              //                                 child: CircleAvatar(
              //                                   backgroundImage: AssetImage(
              //                                       'assets/images/profil.png'),
              //                                   //     Image.asset('assets/images/profil.png'),
              //                                 ),
              //                               ),
              //                               SizedBox(
              //                                 height: 7,
              //                               ),
              //                               Container(
              //                                 child: Text(
              //                                   '  en ligne',
              //                                   style: TextStyle(
              //                                     color: Colors.white38,
              //                                   ),
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     )
              //                   ],
              //                 )),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         height: 8,
              //       ),
              //       Container(
              //         child: Text(
              //           'INTERROGATION DE RECUPERATION',
              //           style: TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              Expanded(
                child: SingleChildScrollView(

                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                      Wrap(
                        children: [
                        ut.question(context),
                        ut.question(context),
                        ut.question(context),
                        ut.question(context),
                        ut.question(context),
                        ut.question(context),
                        ut.question(context),
                      ]),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
