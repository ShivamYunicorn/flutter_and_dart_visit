import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int _sortBySelectedOption = 1;
  int _orderSelectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sort by", style: Theme.of(context).textTheme.titleLarge),
          RadioListTile<int>(
            title: const Text('Name'),
            value: 1,
            groupValue: _sortBySelectedOption,
            onChanged: (int? value) {
              setState(() {
                _sortBySelectedOption = 1;
              });
            },
          ),

          RadioListTile<int>(
            title: const Text('Phone'),
            value: 2,
            groupValue: _sortBySelectedOption,
            onChanged: (int? value) {
              setState(() {
                _sortBySelectedOption = 2;
              });
            },
          ),

          Text("Order", style: Theme.of(context).textTheme.titleLarge),
          RadioListTile<int>(
            title: const Text('Ascending'),
            value: 1,
            groupValue: _orderSelectedOption,
            onChanged: (int? value) {
              setState(() {
                _orderSelectedOption = 1;
              });
            },
          ),

          RadioListTile<int>(
            title: const Text('Descending'),
            value: 2,
            groupValue: _orderSelectedOption,
            onChanged: (int? value) {
              setState(() {
                _orderSelectedOption = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
