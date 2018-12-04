import 'package:flutter/material.dart';
import 'package:flutter_app/random_words.dart';
import 'package:flutter_app/widgets/animation_widget.dart';
import 'package:flutter_app/widgets/stateful_widget.dart';

void main() => runApp(FadeApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
}