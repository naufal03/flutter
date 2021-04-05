import 'package:flutter/material.dart';

class EVote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Pilihlah Kandidat Dibawah Ini'),
        ),
        body: Container(
          color: Colors.purple,
          child: Column(
            children: <Widget>[
              new SizedBox(
                child: Column(
                  children:<Widget>[
                    new ElevatedButton(
                      child: Text('Naufal Arkan Zhafran'),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              new SizedBox(
                child: Column(
                  children:<Widget>[
                    new ElevatedButton(
                      child: Text('Muhammad Galuh Setiawan'),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              new SizedBox(
                child: Column(
                  children:<Widget>[
                    new ElevatedButton(
                      child: Text('Muhammad Syahid Falahuddin'),
                      onPressed: (){},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
