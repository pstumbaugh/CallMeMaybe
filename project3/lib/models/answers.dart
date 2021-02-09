import '../imports.dart';

class Tag {
  String answer;

  Tag(this.answer);

  factory Tag.fromJson(dynamic json) {
    return Tag(json['answer'] as String);
  }

  @override
  String toString() {
    return '{ ${this.answer}}';
  }
}

List<Tag> populateAnswers() {
  String arrayObjsText =
      '{"tags": [{"answer": "dart"}, {"answer": "flutter"}, {"answer": "json"}]}';

  var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
  List<Tag> tagObjs =
      tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();

  return tagObjs;
}

String randomAnswer(List<Tag> answerOptions) {
  Random random = new Random();
  int randomNumber = random.nextInt(3);
  return answerOptions[randomNumber].answer;
}
