/* For email, I borrowed from the dev email_launcher page:
https://pub.dev/packages/email_launcher
While it will work - on the emulator, there is no email client, so an 
error is logged saying just that
*/

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
          hyperlink(
              "mailto:stumbaugh.patrick@gmail.com?subject=Hello!", "Email Me!"),
          RaisedButton(onPressed: _launchEmail, child: Text('Launch Email'))
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
                style: new TextStyle(color: Colors.blue),
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

  void _launchEmail() async {
    Email email = Email(to: ['stumbaugh.patrick@gmail.com']);
    await EmailLauncher.launch(email);
  }
}
