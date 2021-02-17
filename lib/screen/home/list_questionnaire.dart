import 'package:flutter/material.dart';
import 'package:upGenius/screen/utils/utils.dart';

class ListQuestionnaire extends StatefulWidget {
  @override
  _ListQuestionnaireState createState() => _ListQuestionnaireState();
}

var ut = Utils();

class _ListQuestionnaireState extends State<ListQuestionnaire> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                //padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27),
                    bottomRight: Radius.circular(27),
                  ),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //     alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Html 5_48px.png"),
                          ),
                          Container(
                            child: Text('C S S'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          ' 12/06/2001',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.timer,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          ' 09:34:23',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.question_answer_sharp,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          ' 12',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'MUTINDIAPALA',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              'MWILILIKWA',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              'EXAUCE',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/images/profil.png'),
                                                //     Image.asset('assets/images/profil.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                              child: Text(
                                                '  en ligne',
                                                style: TextStyle(
                                                  color: Colors.white38,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(children: [
                      Wrap(children: [
                        ut.question(),
                        ut.question(),
                        ut.question(),
                        ut.question(),
                        ut.question(),
                        ut.question(),
                        ut.question(),
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
