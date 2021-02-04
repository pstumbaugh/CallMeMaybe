import 'package:flutter/material.dart';
import 'Styles.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return profile();
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

  Widget profile() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 19.0),
        child: Container(
          child: Align(
              alignment: Alignment(0.0, 0.0), //position
              child: Column(
                children: <Widget>[
                  Text('Patrick Stumbuagh', style: Styles.headline1),
                  profilePic(),
                ],
              )),
        ),
      ),
    );
  }
}
