/* For email and SMS, I borrowed from the geeksforgeeks website, 
using url_launcher
(email launcher tries, but can't open email app, as the emulator does
not have one installed)
*/

import 'package:flutter/rendering.dart';

import 'imports.dart';

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
          profileText("Mobile Software Developer"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            hyperlink("http://www.github.com/pstumbaugh", "GitHub"),
            hyperlink("http://www.patrickstumbaugh.com", "Portfolio"),
          ]),
          RaisedButton(
            splashColor: Colors.purpleAccent,
            onPressed: _sendingSMS,
            child: Text('Text Me Maybe?'),
          ),
          RaisedButton(
            splashColor: Colors.purpleAccent,
            onPressed: _sendingMails,
            child: Text('Email Me Maybe?'),
          ),
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

  Widget hyperlink(String url, String title) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
            text: TextSpan(
                text: title,
                style: new TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purple),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    launch(url);
                  })));
  }

  Widget profileText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, style: Styles.headline2),
    );
  }

  _sendingMails() async {
    const url = 'mailto:stumbaugh.patrick@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _sendingSMS() async {
    const url = 'sms:6508683189';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
