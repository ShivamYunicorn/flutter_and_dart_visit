import 'package:flutter/material.dart';

class GridVsWrap extends StatelessWidget {
  GridVsWrap({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Vs Wrap")),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              itemCount: vegetables.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 40,
              ),
              itemBuilder: (context, index) =>
                  customChip(context, vegetables[index]),
            ),
          ),

          Expanded(
            child: Wrap(
              spacing: 8.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: List.generate(
                vegetables.length,
                (index) => Chip(
                  label: Text(vegetables[index]),
                  backgroundColor: Colors.blue.shade100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget customChip(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.labelLarge!.copyWith(color: Colors.white),
      ),
    );
  }
}
