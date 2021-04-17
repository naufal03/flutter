import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/item_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Vote extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Tentukan Pilihanmu '),
        ),
        backgroundColor: Colors.orange,
        body: Stack(
          children: [
            ListView(
              children: [
                //// VIEW DATA HERE
                // FutureBuilder<QuerySnapshot>(
                //       future: users.get(),
                //       builder: (_, snapshot){
                //         if(snapshot.hasData){
                //           return Column(
                //             children: snapshot.data.docs.
                //             map((e) =>
                //                 ItemCard(e.data()['name'],e.data()['no'])).toList()
                //           );
                //         }
                //         else{
                //           Text("loading");
                //         }
                //       },
                // ),
                StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshot){
                    if(snapshot.hasData){
                      return Column(
                          children: snapshot.data.docs.
                          map((e) =>
                              ItemCard(e.data()['name'],e.data()['no'])).toList()
                      );
                    }
                    else{
                      Text("loading");
                    }
                  },
                ),
                SizedBox(
                  height: 150,
                )

              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration:
                  BoxDecoration(color: Colors.deepOrangeAccent, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              style: GoogleFonts.poppins(),
                              controller: nameController,
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextField(
                              style: GoogleFonts.poppins(),
                              controller: ageController,
                              decoration: InputDecoration(hintText: "No"),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: Colors.orange,
                            child: Text(
                              'Add Data',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              //// ADD DATA HERE
                              users.add({
                                'name': nameController.text,
                                'No': int.tryParse(ageController.text) ?? 0
                              });

                              nameController.text = '';
                              ageController.text = '';
                            }),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
