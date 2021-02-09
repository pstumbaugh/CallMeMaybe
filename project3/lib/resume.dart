import 'imports.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return resume(context);
  }

  Widget resume(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 19.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Patrick Stumbaugh', style: Styles.headline2),
              InkWell(
                child: Text("stumbuap@oregonstate.edu"),
                onTap: _sendingMails,
              ),
              InkWell(
                child: Text("(650) 868-3189"),
                onTap: _sendingSMS,
              ),
              spacing(),
              newJob("My First Job"),
            ],
          ),
        ),
      ),
    );
  }

//creates a new job to display
  Widget newJob(String jobTitle, String company, String date, String location,
      String description) {
    return Container(
        child: Column(
      children: [
        Text(jobTitle, textAlign: TextAlign.left), //title of job
        Row(
          //row of company, date and location
          children: [
            Text(company, textAlign: TextAlign.left),
            Text(date, textAlign: TextAlign.center),
            Text(location, textAlign: TextAlign.right),
          ],
        ),
        Text(description, textAlign: TextAlign.left),
      ],
    ));
  }

//Adds some spacing
  Widget spacing() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
    );
  }

  void _sendingMails() async {
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
