import 'package:flutter/material.dart';

import '../constants/users_list.dart';
import '../utility/snack_bar.dart' show CustomSnackBar;

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: Column(
        children: [
          ListView.builder(
            itemCount: dummyIndianUsers.length,
            itemBuilder: (context, index) => userCard(index, () {
              CustomSnackBar().greenSnackBar(context, "Tap on card!");
            }),
          ),
        ],
      ),
    );
  }

  Widget userCard(int index, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset("assets/images/ai_img1.png"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dummyIndianUsers[index].name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(dummyIndianUsers[index].email),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
