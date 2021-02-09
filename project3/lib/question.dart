import 'package:project3/models/answers.dart';

import 'imports.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  Widget build(BuildContext context) {
    List<Answers> myAnswersList = populateAnswers(); //populate answers list
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(getNewAnswer(myAnswersList)),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  getNewAnswer(myAnswersList); //get a new answer, update state
                });
              },
              child: Image.asset('assets/profilePic.jpg')),
        )
      ],
    );
  }

//gets a new answer from our answers list.
  String getNewAnswer(List<Answers> myAnswersList) {
    String newAnswer = randomAnswer(myAnswersList);
    return newAnswer;
  }
}
