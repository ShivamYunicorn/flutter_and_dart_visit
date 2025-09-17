import 'package:flutter/material.dart';

class TwoListUi extends StatelessWidget {
  TwoListUi({super.key});

  final List<String> vegetables = [
    'Carrot',
    'Broccoli',
    'Spinach',
    'Tomato',
    'Potato',
    'Onion',
    'Bell Pepper',
    'Cucumber',
    'Lettuce',
    'Zucchini',
  ];

  final List<String> fruits = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Elderberry",
    "Fig",
    "Grape",
    "Honeydew",
    "Kiwi",
    "Lemon",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  cardItem(context, vegetables[index]),
              itemCount: vegetables.length,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => cardItem(context, fruits[index]),
              itemCount: fruits.length,
            ),
          ),
        ],
      ),
    );
  }

  Card cardItem(BuildContext context, String title) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title, style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
