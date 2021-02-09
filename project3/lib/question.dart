import 'package:project3/models/answers.dart';

import 'imports.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(getNewAnswer()),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  getNewAnswer();
                });
              },
              child: Image.asset('assets/profilePic.jpg')),
        )
      ],
    );
  }

//gets a new answer from our answers list.
  String getNewAnswer() {
    List<Tag> test = populateAnswers();
    String newAnswer = randomAnswer(test);
    return newAnswer;
  }
}
