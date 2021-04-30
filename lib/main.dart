import 'package:flutter/material.dart';
import 'package:waitingproj/features/waitingproj/presentation/pages/home.dart';

void main() {
  runApp(WaitingApp());
}

class WaitingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waiting Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

