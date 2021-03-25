import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/KandidatPertama.dart';

class HasilVote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Hasil Vote'),
        ),
        body:Container(
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
                          new Text('Naufal Arkan '),
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
                        ],
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(30.0)),
                  new RaisedButton(
                    color: Colors.purpleAccent,
                    child: Column(
                      children: <Widget>[
                        new Text(
                          'Back',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                        ),
                      ],
                    ),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KandidatPertama()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
