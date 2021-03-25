import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/HasilVote.dart';
import 'package:flutter_auth/Screens/Home/Visi2.dart';
import 'package:flutter_auth/Screens/Home/Visi3.dart';
import 'Visi1.dart';

class KandidatPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Calon Ketua Osis'),
        ),
        body: Container(
         color: Colors.purple,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.purpleAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new Image.asset(
                            'assets/images/Arkan.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Naufal A '),
                          new RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (contex) => Visi1()));
                            }

                          ),
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.purpleAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new Image.asset(
                            'assets/images/Galuh.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Galuh S'),
                          new RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Visi2()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.purpleAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new Image.asset(
                            'assets/images/Sahid.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Sahid F'),
                          new RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Visi3()));

                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(30.0)),
                  new SizedBox(
                      child: Column(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(5.0)),
                          new RaisedButton(
                            color: Colors.purpleAccent,
                            child: Text(
                              'Hasil Vote',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HasilVote()));
                            },
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}