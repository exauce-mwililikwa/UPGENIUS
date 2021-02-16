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
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(children: []),
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
                          padding: EdgeInsets.only(
                              top: 20, left: 5, right: 5, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(19),
                                bottomLeft: Radius.circular(19),
                                topRight: Radius.circular(19),
                                bottomRight: Radius.circular(19),
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3, 6),
                                ),
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3, 6),
                                )
                              ]),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                    'assets/images/Html 5_48px.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
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
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Mutindiapala Mwililikwa',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons.person_rounded,
                                                    color: Colors.black45,
                                                    size: 12,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '1.865',
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons.question_answer,
                                                    color: Colors.black45,
                                                    size: 12,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    ' 24',
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons.verified,
                                                    color: Colors.black45,
                                                    size: 12,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    '750',
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 125),
                                        child: Column(
                                          //  mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              child: Text(
                                                'Consulter...',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
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
