import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Center(
      child: MaterialButton(
        onPressed: () {
          FirebaseFirestore firestore = FirebaseFirestore.instance;
          FirebaseFirestore.instance
              .collection('users')
              .where('age', isGreaterThan: 20)
              .get()
              .then((QuerySnapshot querySnapshot) {
            querySnapshot.docs.forEach((doc) {
              print(doc["age"]);
            });
          });
        },
        child: Text(
          'Get Data',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    //   future: users.doc(documentId).get(),
    //   builder:
    //       (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
    //     if (snapshot.hasError) {
    //       return Text("Something went wrong");
    //     }

    //     if (snapshot.hasData && !snapshot.data!.exists) {
    //       return Text("Document does not exist");
    //     }

    //     if (snapshot.connectionState == ConnectionState.done) {
    //       Map<String, dynamic> data =
    //           snapshot.data!.data() as Map<String, dynamic>;
    //       return Center(
    //           child: Text("Full Name: ${data['full_name']} ${data['age']}"));
    //     }

    //     return Text("loading");
    //   },
    // );
  }
}
