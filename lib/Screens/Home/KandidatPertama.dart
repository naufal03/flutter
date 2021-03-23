import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10.0)
          ),
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
                          new Text('Naufal Arkan '),
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
                          new Text('Galuh S           '),
                          new RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
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
                            'assets/images/Sahid.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Sahid F           '),
                          new RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
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