import 'package:flutter/material.dart';
import 'package:flutter_visit/widgetsLearning/second_screen.dart';
import 'package:flutter_visit/widgetsLearning/thrid_screen.dart';

import 'fifth_screen.dart' show FifthScreen;
import 'fourth_screen.dart' show FourthScreen;

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(title: Text("First Screen")),
      body: Container(
        width: double.infinity,
        color: Colors.green.shade50,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Space evenly"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textDirection: TextDirection.rtl,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FifthScreen()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black54, width: 1),
                    ),
                    // transform: Matrix4.rotationZ(0.1),
                    // transform: Matrix4.rotationX(0.8),
                    // transform: Matrix4.rotationY(0.5),
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthScreen()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://img.freepik.com/premium-photo/portrait-happy-man-generative-ai_566661-22620.jpg",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Text("Space around"),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.blueGrey),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.lightBlue.shade100),
                    child: Text(
                      "Stack View",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
