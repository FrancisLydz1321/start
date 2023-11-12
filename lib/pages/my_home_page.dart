import 'package:flutter/material.dart';
import 'package:namer_app/state/my_app_state.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<myAppState>();

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Text('A random idea: '),
          Text(appState.current.asUpperCase),
        ],
      )),
    );
  }
}
