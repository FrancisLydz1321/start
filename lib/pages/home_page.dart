// import 'package:english_words/src/word_pair.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:namer_app/state/my_app_state.dart';
// import 'package:provider/provider.dart';

// // class MyHomePage extends StatelessWidget {
// //   // " MyHomePage" is the layout widget of the app. Interaction and Designs are implemented here.
// //   // this dart file handles the UI of the mobile app
// //   @override
// //   Widget build(BuildContext context) {
// //     // Every build method must return a widget or (more typically) a nested tree of widgets
// //     var appState = context.watch<MyAppState>();
// //     var pair = appState
// //         .current; // the link to appstate class variable is placed in a variable called "pair"

// //     IconData icon;
// //     if (appState.favorites.contains(pair)) {
// //       icon = Icons.favorite;
// //     } else {
// //       icon = Icons.favorite_border;
// //     }

// //     return Scaffold(
// //       // every "return" keyword value is the parent widget, in this case it's Scaffold. This will change overtime.
// //       appBar: AppBar(
// //         title: Text('BOGO'),
// //       ),

// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           // vertical
// //           children: [
// //             Text('A random idea:'), // 1st child
// //             // Text(appState.current.asLowerCase),
// //             BigCard(pair: pair), // this is a class, 2nd child

// //             SizedBox(height: 50), // "SizedBox creates visual gaps", 3rd child

// //             BigCard(pair: pair), // 4th child

// //             SizedBox(height: 50), // 5th child

// //             Row(
// //               mainAxisSize: MainAxisSize
// //                   .min, //This tells Row not to take all available horizontal space.
// //               children: [
// //                 ElevatedButton.icon(
// //                   onPressed: () {
// //                     appState.toggleFavorite();
// //                   },
// //                   icon: Icon(icon),
// //                   label: Text('Like'),
// //                 ),
// //                 SizedBox(width: 10),
// //                 ElevatedButton(
// //                     // contains 2 arguments: onPressed, child: Text
// //                     //6th child
// //                     // newly added button
// //                     onPressed: () {
// //                       appState.getNext();
// //                     },
// //                     child: Text('Next')),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // this is a stateless widget
// // class MyHomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Row(
// //         children: [
// //           SafeArea(
// //             child: NavigationRail(
// //               extended: false,
// //               destinations: [
// //                 NavigationRailDestination(
// //                   icon: Icon(Icons.home),
// //                   label: Text('Home'),
// //                 ),
// //                 NavigationRailDestination(
// //                   icon: Icon(Icons.favorite),
// //                   label: Text('Favorites'),
// //                 ),
// //               ],
// //               selectedIndex: 0,
// //               onDestinationSelected: (value) {
// //                 // this line of code only outputs in to console. Once i know the logic how to manipulate it. This will be updated soon.
// //                 print('selected: $value');
// //               },
// //             ),
// //           ),
// //           Expanded(
// //             child: Container(
// //               color: Theme.of(context).colorScheme.primaryContainer,
// //               child: GeneratorPage(),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // // this class relies on HomePage class
// // class GeneratorPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     var appState = context.watch<MyAppState>();
// //     var pair = appState.current;

// //     IconData icon;
// //     if (appState.favorites.contains(pair)) {
// //       icon = Icons.favorite;
// //     } else {
// //       icon = Icons.favorite_border;
// //     }

// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           BigCard(pair: pair),
// //           SizedBox(height: 10),
// //           Row(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               ElevatedButton.icon(
// //                 onPressed: () {
// //                   appState.toggleFavorite();
// //                 },
// //                 icon: Icon(icon),
// //                 label: Text('Like'),
// //               ),
// //               SizedBox(width: 10),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   appState.getNext();
// //                 },
// //                 child: Text('Next'),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// //This is a stateful widget
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     Widget page;
//     switch (selectedIndex) {
//       case 0:
//         page = GeneratorPage();
//         break;
//       case 1:
//         page = Placeholder();
//         break;
//       default:
//         throw UnimplementedError('no widget for $selectedIndex');
//     }
//     return LayoutBuilder(builder: (context, constraints) {
//       return Scaffold(
//         body: Row(
//           children: [
//             SafeArea(
//               child: NavigationRail(
//                 extended: constraints.maxWidth >= 600,
//                 // extended: false,
//                 destinations: [
//                   NavigationRailDestination(
//                     icon: Icon(Icons.home),
//                     label: Text('Home'),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.favorite),
//                     label: Text('Favorites'),
//                   ),
//                 ],
//                 selectedIndex: selectedIndex,
//                 onDestinationSelected: (value) {
//                   // // this line of code only outputs in to console. Once i know the logic how to manipulate it. This will be updated soon.
//                   // print('selected: $value');

//                   setState(() {
//                     selectedIndex = value; // notifyListeners() similars
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Theme.of(context).colorScheme.primaryContainer,
//                 child: page,
//               ),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }

// // this class relies on HomePage class
// class GeneratorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();
//     var pair = appState.current;

//     IconData icon;
//     if (appState.favorites.contains(pair)) {
//       icon = Icons.favorite;
//     } else {
//       icon = Icons.favorite_border;
//     }

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           BigCard(pair: pair),
//           SizedBox(height: 10),
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ElevatedButton.icon(
//                 onPressed: () {
//                   appState.toggleFavorite();
//                 },
//                 icon: Icon(icon),
//                 label: Text('Like'),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   appState.getNext();
//                 },
//                 child: Text('Next'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BigCard extends StatelessWidget {
//   // this class refers to the MyApp class
//   const BigCard({
//     super.key,
//     required this.pair,
//   });

//   final WordPair pair;

//   @override
//   Widget build(BuildContext context) {
//     // initializing a variable
//     final theme = Theme.of(context); //newly added variable
//     final style = theme.textTheme.displayMedium!.copyWith(
//       // wako kasabot
//       color: theme.colorScheme.onPrimary,
//     );

//     return Card(
//       color: theme.colorScheme.primary, // setting the card for AppState color
//       child: Padding(
//         // a widget focus on provide padding to the child parameter
//         padding: const EdgeInsets.all(30),
//         // child: Text(pair.asLowerCase),
//         child: Text(
//           pair.asLowerCase,
//           style: style,
//           semanticsLabel: "${pair.first} ${pair.second}",
//         ),
//       ),
//     );
//   }
// }
// a