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
      home: Test(),
      // home: const FirstScreen(),
      // home: TwoListUi(),
      // home: GridVsWrap(),
      // home: FullTextField(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
              child: ClipRect(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
