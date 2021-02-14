import 'imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //unpack the future string with .then, send that String to call to run the app
  loadAsset().then((answers) {
    runApp(mainScreen(answers));
  });
}

//load the json file as a future string
Future<String> loadAsset() async {
  return await rootBundle.loadString('./assets/answers.json');
}
