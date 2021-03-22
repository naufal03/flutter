
import 'package:flutter/material.dart';

class KandidatKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Calon Ketua Osis'),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.purpleAccent,
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/Arkan.jpg',
                  width: 140,
                  height: 150,
                ),
                new Text('Naufal Arkan'),
                new Text(' (XI RPL)'),
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
      ),
    );
  }
}