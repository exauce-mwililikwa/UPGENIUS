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
              Container(
                child: Row(
                  children: [
                    Container(
                      
                    )
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
