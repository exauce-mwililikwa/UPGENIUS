import 'package:flutter/material.dart';

class DashQuestionnaire extends StatefulWidget {
  @override
  _DashQuestionnaireState createState() => _DashQuestionnaireState();
}

class _DashQuestionnaireState extends State<DashQuestionnaire> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Java Script',
                        style: TextStyle(
                          fontSize: 27,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '456',
                                  ),
                                ),
                                Container(
                                  child: Text('Proffeseurs'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text('45'),
                                ),
                                Container(
                                  child: Text('Questionnaires'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Column(
                              children: [
                                Container(
                                  child: Text('45'),
                                ),
                                Container(
                                  child: Text('Repondant'),
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
              Expanded(
                  child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                child:
                                    Image.asset('assets/images/Java_48px.png'),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today,
                                            size: 12,
                                          ),
                                          Text('12/04/2009'),
                                          SizedBox(
                                            width: 22,
                                          ),
                                          Icon(
                                            Icons.timer,
                                            size: 12,
                                          ),
                                          Text(
                                            '08:42:32',
                                            // textAlign: TextAlign.end,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Muti mwililikwa',
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
