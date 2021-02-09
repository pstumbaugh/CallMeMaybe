import '../imports.dart';

class Answers {
  String answer;

  Answers(this.answer);

  factory Answers.fromJson(dynamic json) {
    return Answers(json['answer'] as String);
  }

  @override
  String toString() {
    return '{ ${this.answer}}';
  }
}

//Gets a random answer from our answers list
String randomAnswer(List<Answers> answerOptions) {
  Random random = new Random();
  int size = answerOptions.length;
  int randomNumber = random.nextInt(size);
  return answerOptions[randomNumber].answer;
}

List<Answers> populateAnswers() {
  String arrayObjsText = r'''{"tags": [
        {
            "answer": "It is certain."
        },
        {
            "answer": "Without a doubt."
        },
        {
            "answer": "You may rely on it."
        },
        {
            "answer": "As I see it, yes."
        },
        {
            "answer": "Signs point to yes."
        },
        {
            "answer": "Reply hazy, try again."
        },
        {
            "answer": "Better not tell you now."
        },
        {
            "answer": "Concentrate and ask again."
        },
        {
            "answer": "Don't count on it."
        },
        {
            "answer": "My reply is no."
        },
        {
            "answer": "My sources say no."
        },
        {
            "answer": "Outlook not so good."
        },
        {
            "answer": "Very doubtful."
        },
        {
            "answer": "Yes."
        }
    ]}''';

  var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
  List<Answers> tagObjs =
      tagObjsJson.map((tagJson) => Answers.fromJson(tagJson)).toList();

  return tagObjs;
}
