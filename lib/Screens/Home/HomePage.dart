import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/Visi2.dart';
import 'package:flutter_auth/Screens/Home/Visi3.dart';
import 'package:flutter_auth/Screens/Home/Vote.dart';
import '../../authentication_service.dart';
import 'Visi1.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Calon Ketua Osis'),
        ),
        body: Scaffold(
          body: Container(
          color: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.deepOrangeAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(18.0)),
                          new Image.asset(
                            'assets/images/Arkan.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Naufal A '),
                          new RaisedButton(
                              color: Colors.orange,
                              child: Text(
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (contex) => Visi1()));
                              }),
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.deepOrangeAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(18.0)),
                          new Image.asset(
                            'assets/images/Galuh.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Galuh S'),
                          new RaisedButton(
                              color: Colors.orange,
                              child: Text(
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (contex) => Visi2()));
                              }),
                        ],
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 150,
                    child: Card(
                      color: Colors.deepOrangeAccent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.all(18.0)),
                          new Image.asset(
                            'assets/images/Sahid.jpg',
                            width: 140,
                            height: 120,
                          ),
                          new Text('Sahid F'),
                          new RaisedButton(
                              color: Colors.orange,
                              child: Text(
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (contex) => Visi3()));
                              }),
                        ],
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(20.0)),
                  new SizedBox(
                    child: Column(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(5.0)),
                        new RaisedButton(
                            color: Colors.orange,
                            child: Text(
                              'VOTE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => (Vote())));
                            }
                            ),
                        RaisedButton(
                          color: Colors.orange,
                          onPressed: () {
                            context.read<AuthenticationService>().signOut();
                          },
                          child: Text(
                              "Sign out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                      ],
                    )
                  )
              ),
            ),
          ),
        ),
      );
  }
}
