import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class myAppState extends ChangeNotifier {
  var current = WordPair.random();
}
