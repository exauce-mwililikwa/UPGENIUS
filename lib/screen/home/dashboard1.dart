import 'package:flutter/material.dart';
import 'dashboard.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  Widget typetext(String typeName, String photo, int nombre_question) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
      padding: EdgeInsets.only(top: 20, left: 5, right: 5),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2.15,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(7, 4),
              blurRadius: 12,
            )
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
                '$nombre_question Question',
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
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
                      Container(
                        child: Row(
                          children: [
                            typetext("PARAMETRES", "Gallery_96px.png", 34),
                            typetext("NOTES", "Planner_96px.png", 54)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            typetext("PROGRAMMES", "User_Male_96px.png", 57),
                            typetext("MACABET", "Idea_96px.png", 42)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            typetext("PROGRAMMES", "Surprised_96px.png", 57),
                            typetext("MACABET", "Windows XP_96px.png", 42)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            typetext("PROGRAMMES", "Book_96px.png", 57),
                            typetext("MACABET", "Nerd_96px.png", 42)
                          ],
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
}
