import 'package:flutter/material.dart';
import 'package:upGenius/screen/home/list_questionnaire.dart';

class Utils {
  Widget question() {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 11, bottom: 5.5),
      padding: EdgeInsets.only(left: 9, right: 9, top: 6, bottom: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 3),
              blurRadius: 3,
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 3),
              blurRadius: 3,
            )
          ]),
      child: Column(
        children: [
          Container(
            child: Text(
                'Comment peut t\'on disposer les element dans un container possedant beaucoup d\'element pouvant flotter ?'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 1_64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('margin'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset("assets/images/Circled 2 _64px.png",
                          height: 20, width: 20, color: Colors.greenAccent),
                      Text('Shadow'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 3 _64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('padding'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Circled 4_64px.png",
                        height: 12,
                        width: 12,
                        color: Colors.red,
                      ),
                      Text('median'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget travail(
      String icon,
      String date,
      String heure,
      String prof,
      int participant,
      int question,
      int reussite,
      BuildContext context,
      String motif) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
      padding: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 20),
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
            child: Image.asset('assets/images/$icon'),
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
                      Text('$date'),
                      SizedBox(
                        width: 22,
                      ),
                      Icon(
                        Icons.timer,
                        size: 12,
                      ),
                      Text(
                        '$heure',
                        // textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$motif',
                    style: TextStyle(
                      fontSize: 12,
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
                                '$participant',
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
                                ' $question',
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
                                '$reussite',
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
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$prof',
                    style: TextStyle(
                        //  fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.start,
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ListQuestionnaire();
                                },
                              ),
                            );
                          },
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
    );
  }
}
