import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Text('Maquabets'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 5, right: 5),

                        padding: EdgeInsets.only(
                            top: 15, left: 5, right: 5, bottom: 15),
                        // margin: EdgeInsets.only(bottom: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(3, 2),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.photo_size_select_actual_rounded,
                                      color: Colors.blue,
                                      size: 12,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      ' Abel Kandada Ilunga',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          child: Icon(
                                        Icons.access_alarm,
                                        size: 12,
                                      )),
                                      Container(
                                        child: Text(
                                          '01/11/2020 09:14:19',
                                          style: TextStyle(
                                            fontSize: 12,

                                            //  fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Text(
                                  'Donner la plus grande capitale de l\'afique situer dans le bassin du golge de guinne et toujours occupee par le grec ? ',
                                  style: TextStyle(),
                                  textAlign: TextAlign.left),
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
                                          child: Text('1'),
                                        ),
                                        Container(
                                          child: InkWell(
                                            child: Text(
                                              'J\'aime',
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        )
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
                                          child: Text('6'),
                                        ),
                                        Container(
                                          child: InkWell(
                                            child: Text(
                                              'Commentaire(s)',
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                        margin: EdgeInsets.only(top: 7, left: 5, right: 5),

                        padding: EdgeInsets.only(
                            top: 15, left: 5, right: 5, bottom: 15),
                        // margin: EdgeInsets.only(bottom: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(3, 2),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.photo_size_select_actual_rounded,
                                      color: Colors.blue,
                                      size: 12,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      ' Pascovish Kalemie Blaise',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          child: Icon(
                                        Icons.access_alarm,
                                        size: 12,
                                      )),
                                      Container(
                                        child: Text(
                                          '12/03/2020 08:54:36',
                                          style: TextStyle(
                                            fontSize: 12,

                                            //  fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Text(
                                  'Donner la plus grande capitale de l\'afique situer dans le bassin du golge de guinne et toujours occupee par le grec ? ',
                                  style: TextStyle(),
                                  textAlign: TextAlign.left),
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
                                          child: Text('1'),
                                        ),
                                        Container(
                                          child: InkWell(
                                            child: Text(
                                              'J\'aime',
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        )
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
                                          child: Text('6'),
                                        ),
                                        Container(
                                          child: InkWell(
                                            child: Text(
                                              'Commentaire(s)',
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
