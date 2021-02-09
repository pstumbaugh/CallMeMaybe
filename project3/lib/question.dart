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
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text("Call Me... Maybe", style: Styles.headline1),
              ),
              RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.yellow,
                  splashColor: Colors.purpleAccent,
                  onPressed: () {
                    setState(() {
                      getNewAnswer(
                          myAnswersList); //get a new answer, update state
                    });
                  },
                  child: Text("Ask a question, tap me for answer")),
            ],
          ),
        ),
        Text(getNewAnswer(myAnswersList), style: Styles.headline2)
      ],
    );
  }

//gets a new answer from our answers list.
  String getNewAnswer(List<Answers> myAnswersList) {
    String newAnswer = randomAnswer(myAnswersList);
    return newAnswer;
  }
}
