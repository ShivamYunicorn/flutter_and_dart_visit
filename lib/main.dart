import 'package:flutter/material.dart';
import 'package:flutter_visit/widgetsLearning/FullTextField.dart';
import 'package:flutter_visit/widgetsLearning/GridVsWrap.dart';
import 'package:flutter_visit/widgetsLearning/first_screen.dart';
import 'package:flutter_visit/widgetsLearning/two_list_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FirstScreen(),
      // home: TwoListUi(),
      // home: GridVsWrap(),
      // home: FullTextField(),
    );
  }

}
