import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  Widget travail(String icon,String date,String heure,String prof,int participant,int question,int reussite) {
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
                  height: 12,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$prof',
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
    );
  }
}
