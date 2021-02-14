import 'dart:core';

import 'package:project3/mainScreen.dart';
import 'imports.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  loadAsset().then((answers) {
    print(answers);
    runApp(mainScreen());
  });
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('./assets/answers.json');
}
