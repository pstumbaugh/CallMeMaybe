import 'imports.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final die = Die(numberOfSides: 20);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${die.currentValue}'),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  die.roll();
                });
              },
              child: Image.asset('assets/profilePic.jpg')),
        )
      ],
    );
  }
}
