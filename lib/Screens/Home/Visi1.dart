import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/HomePage.dart';

class Visi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Kandidat Pertama'),
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
                                  'assets/images/Arkan.jpg',
                                  width: 200,
                                  height: 200,
                                ),
                                new Text(''
                                    'Naufal Arkan Zhafran',
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
                                                    'Menjadikan siswa/i yang taat kepada Peraturan',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  new Text(
                                                    'Agama Dan Negara',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  )
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
                                                          '1. Membuat Siswa Memiliki Kesadaran Tentang Agama',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        new Text(
                                                          '2. Menjadikan Sekolah Tempat Yang Nyaman Untuk Belajar',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        new Text(
                                                          '3. Memfasilitasi bakat dan minat seni pada diri siswa.',
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
