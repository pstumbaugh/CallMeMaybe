import 'package:flutter/material.dart';

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
              profile(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }

  Widget profile() {
    return Scaffold(
      children[]
    Text("Patrick Stumbaugh");
  }

  //gets picture, aligns picture, adds padding
  Widget profilePic() {
    return Align(
        alignment: Alignment(0.0, -.9), //position of photo
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                //border size and color
                color: Colors.deepPurple,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(12), //rounded edges
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                  child: Image.asset('assets/profilePic.jpg'),
                  width: 150,
                  height: 150),
            )));
  }
}
