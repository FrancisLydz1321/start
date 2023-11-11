// import 'package:english_words/english_words.dart';
// import 'package:flutter/material.dart';

// class MyAppState extends ChangeNotifier {
//   // "ChangeNotifier" means it can notify others about its own changes
//   // declaring variables
//   var current = WordPair.random();
//   var favorites = <WordPair>[];

//   // methods
//   void getNext() {
//     current = WordPair.random();
//     notifyListeners(); // a built-in method from ChangeNotifier
//   }

//   void toggleFavorite() {
//     if (favorites.contains(current)) {
//       favorites.remove(current);
//     } else {
//       favorites.add(current);
//     }
//     notifyListeners(); // necessary in every "ChangeNotifier State"
//   }
// }
