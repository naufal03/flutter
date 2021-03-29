import 'dart:async';
import 'package:flutter/material.dart';
import 'package:polls/polls.dart';
import 'polls.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Polls',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PollView(),
    );
  }
}


class PollView extends StatefulWidget {
  @override
  _PollViewState createState() => _PollViewState();
}

class _PollViewState extends State<PollView> {

  double option1 = 0;
  double option2 = 0;
  double option3 = 0;

  String user = "king@mail.com";
  Map usersWhoVoted = {'sam@mail.com': 3, 'mike@mail.com' : 4, 'john@mail.com' : 1, 'kenny@mail.com' : 1};
  String creator = "eddy@mail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Salah satu'),
      ),
      body: Container(
        child: Polls(
          children: [
            // This cannot be less than 2, else will throw an exception
            Polls.options(title: 'Arkan', value: option1),
            Polls.options(title: 'Galuh', value: option2),
            Polls.options(title: 'Sahid', value: option3),
          ], question: Text(''),
          currentUser: this.user,
          creatorID: this.creator,
          voteData: usersWhoVoted,
          userChoice: usersWhoVoted[this.user],
          onVoteBackgroundColor: Colors.purple,
          leadingBackgroundColor: Colors.purple,
          backgroundColor: Colors.purpleAccent,
          onVote: (choice) {
            print(choice);
            setState(() {
              this.usersWhoVoted[this.user] = choice;
            });
            if (choice == 1) {
              setState(() {
                option1 += 1;
              });
            }
            if (choice == 2) {
              setState(() {
                option2 += 1;
              });
            }
            if (choice == 3) {
              setState(() {
                option3 += 1;
              });
            }
          }
            ),
            )
      );
  }
}