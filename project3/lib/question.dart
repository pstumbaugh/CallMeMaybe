import 'package:project3/models/answers.dart';

import 'imports.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final answer = Answers();

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${answer.currentValue}'),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  answer.getNewAnswer();
                });
              },
              child: Image.asset('assets/profilePic.jpg')),
        )
      ],
    );
  }
}
