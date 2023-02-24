import 'package:clubhouse_exploration/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF7F7FC),
          fontFamily: 'SofiaSansSemiCondensed'),
      home: Home(),
    );
  }
}
