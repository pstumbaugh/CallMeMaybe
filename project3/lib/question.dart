import 'package:project3/models/answers.dart';
import 'imports.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool answerCounter = false; //if first answer = false
  Widget build(BuildContext context) {
    List<Answers> myAnswersList = populateAnswers(); //populate answers list
    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text("Call Me... Maybe", style: Styles.headline1),
                ),
                qAndaButton(myAnswersList),
              ],
            ),
          ),
          Text(getNewAnswer(myAnswersList), style: Styles.headline2)
        ],
      ),
    );
  }

//gets a new answer from our answers list.
  String getNewAnswer(List<Answers> myAnswersList) {
    if (answerCounter == false) {
      answerCounter = true; //switch counter to true
      return "Go ahead, hit that button!";
    } else {
      String newAnswer = randomAnswer(myAnswersList);
      return newAnswer;
    }
  }

  Widget qAndaButton(List<Answers> myAnswersList) {
    return RaisedButton(
        color: Colors.deepPurple,
        textColor: Colors.yellow,
        splashColor: Colors.purpleAccent,
        onPressed: () {
          setState(() {
            getNewAnswer(myAnswersList); //get a new answer, update state
          });
        },
        child: Text("Ask a question, tap me for answer"));
  }
}
