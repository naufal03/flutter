import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Vote extends StatelessWidget {
  const Vote({Key key, this.title}) : super(key: key);

  final String title;
  Widget _buildListitem(buildContext, DocumentSnapshot document) {
    BuildContext context;
    return ListTile(
      title: Row(
        children: [
          Expanded(
              child: Text(
                document['name'],
                style: Theme.of(context).textTheme.headline,
              ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              document['votes'].toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          )
        ],
      ),
      onTap: () {
         FirebaseFirestore.instance.runTransaction((transaction) async{
          DocumentSnapshot freshSnap =
          await transaction.get(document.reference);
          await transaction.update(freshSnap.reference,{
            'votes' : freshSnap['votes'] + 1
          });
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Tentukan Pilihanmu"),
      ),
      body:StreamBuilder(
        stream: FirebaseFirestore.instance.collection('bandnames').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text('Loading...');
          return ListView.builder(
            itemExtent: 80.0,
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) =>
                _buildListitem(context, snapshot.data.documents(index)),
          );
        }) ,
    );
  }
}
