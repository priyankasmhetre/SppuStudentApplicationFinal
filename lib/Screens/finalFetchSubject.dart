import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';


class finalFetchSub extends StatefulWidget {
  // final doc;
  // SubCategoery(this.doc);

  @override
  _SubCategoryClassState createState() => _SubCategoryClassState();
}

class _SubCategoryClassState extends State<finalFetchSub> {
  final db = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SubCategories"),
        centerTitle: true,
      ),
      body: new StreamBuilder<QuerySnapshot>(
        stream: db
            .collection('AdminAdd')
            .doc(user.uid)
            .collection('Subject')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var doc = snapshot.data.docs;
            return new ListView.builder(
                itemCount: doc.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:(){
                        Navigator.of(context)
                            .push(
                            MaterialPageRoute(
                              builder: (context) => HomeScreen())
                        );
                      },

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Column(
                          children: <Widget>[
                            Text(doc[index].get('Subject')),
                            SizedBox(
                              height: 10.0,
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return LinearProgressIndicator();
          }
        },
      ),
    );
  }
}