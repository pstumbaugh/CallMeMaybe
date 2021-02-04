import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'Styles.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return profile(context);
  }

  Widget profile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19.0),
      child: Column(
        children: <Widget>[
          Text('Patrick Stumbaugh', style: Styles.headline1),
          profilePic(),
          Text('Mobile Software Developer', style: Styles.headline2),
          Row(children: <Widget>[
            Linkify(
              text: "www.patrickstumbaugh.com",
              linkStyle: TextStyle(color: Colors.red),
            )
          ])
        ],
      ),
    );
  }

  //gets picture, adds padding
  Widget profilePic() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[700],
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
          )),
    );
  }
}
