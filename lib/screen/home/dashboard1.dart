import 'package:flutter/material.dart';
import 'dashboard.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  List<String> images = [
    "Surprised_96px.png",
    "Book_96px.png",
    "Gallery_96px.png",
    "Literature_96px.png",
    "Windows XP_96px.png",
  ];

  List<String> cours = [
    "Programmation",
    "Mathematique",
    "Logique",
    "Education",
    "Autres",
  ];

  List<int> nombre = [3, 8, 10, 20, 1];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 24, left: 5, right: 5, bottom: 34),
                        // margin: EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Exauce mwililikwa',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('Etudiant',
                                              textAlign: TextAlign.left)),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/profil.png'),
                                    // child:
                                    //     Image.asset('assets/images/profil.png'),
                                  ),
                                  //    width: MediaQuery.of(context).size.width / 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        children: List.generate(
                          cours.length,
                          (index) => typetext(
                              cours[index], images[index], nombre[index]),
                        ),
                      ),
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

  Widget typetext(String typeName, String photo, int nombreQuestion) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      padding: EdgeInsets.only(top: 20, left: 5, right: 5),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2 - 20,
      decoration: BoxDecoration(
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
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Dashboard();
              },
            ),
          );
        },
        child: Column(
          children: [
            Container(
              height: 34,
              child: Image.asset(
                "assets/images/$photo",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                typeName,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                '$nombreQuestion Question',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
