import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/HomePage.dart';

class Visi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Kandidat Kedua'),
            backgroundColor: Colors.deepOrangeAccent,
          ),
            body: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new SizedBox(
                        width: 500,
                        height: 600,
                        child: Card(
                            color: Colors.deepOrangeAccent,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children:<Widget>[
                                new Padding(padding: EdgeInsets.all(10.0)),
                                new Image.asset(
                                  'assets/images/Galuh.jpg',
                                  width: 300,
                                  height: 200,
                                ),
                                new Text(''
                                    'Muhammad Galuh Setiawan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new Text(
                                  'XI RPL II',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new SizedBox(
                                  child: Column(
                                    children:<Widget> [
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      new Text(
                                        'Visi Dan Misi',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      new SizedBox(
                                        child: Row(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.all(5.0)),
                                            new Text(
                                              'Visi : ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            new SizedBox(
                                              child: Column (
                                                children: <Widget>[
                                                  new Padding(padding: EdgeInsets.all(10.0)),
                                                  new Text(
                                                    'menjadikan siswa/i yang berbudi pekerti luhur',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      new SizedBox(
                                          child: Column(
                                              children: <Widget>[
                                                new Padding(padding: EdgeInsets.all(5.0)),
                                                new Text(
                                                  'Misi : ',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                new SizedBox(
                                                  child: Column(
                                                      children: <Widget>[
                                                        new Padding(padding: EdgeInsets.all(5.0)),
                                                        new Text(
                                                          '1.melaksanakan kegiatan positif di sekolah',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        new Text(
                                                          '2. menjadikan siswa SMKN 1 GUNUNGPUTRI bermartabat',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        new Text(
                                                          '3. meningkatkan rasa bersaing siswa dalam hal belajar',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        new SizedBox(
                                                          child: Column(
                                                            children: <Widget> [
                                                              new Padding(padding: EdgeInsets.all(5.0)),
                                                              new RaisedButton(
                                                                color: Colors.orange,
                                                                child: Text(
                                                                    'BACK',
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontWeight: FontWeight.bold,
                                                                    )
                                                                ),
                                                                onPressed: () {
                                                                  Navigator.pushReplacement(
                                                                      context,
                                                                      MaterialPageRoute(builder: (context) => HomePage()));
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ]
                                                  ),
                                                )
                                              ]
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                        )
                    ),
                  ]
              ),
            )
        )
    );
  }
}
