import 'package:flutter/material.dart';
import 'Styles.dart';
import 'profile.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple, //main title background color
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Call Me Maybe'),
            bottom: TabBar(
              //tabs and icons
              indicatorColor: Colors.yellowAccent, //tab bar indicator color
              tabs: [
                Tab(icon: Icon(Icons.face)),
                Tab(icon: Icon(Icons.ballot)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
          ),
          body: TabBarView(
            //what's in the tabs
            children: [
              Profile(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
