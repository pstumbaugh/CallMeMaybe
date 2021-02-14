import '../imports.dart';

class Answers {
  String answer;
  Answers(this.answer);

  //gets a answer from json from 'answer' key, returns as string
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

List<Answers> populateAnswers(dynamic answers) {
  var tagObjsJson = jsonDecode(answers)['tags'] as List;
  List<Answers> tagObjs =
      tagObjsJson.map((tagJson) => Answers.fromJson(tagJson)).toList();

  return tagObjs;
}
