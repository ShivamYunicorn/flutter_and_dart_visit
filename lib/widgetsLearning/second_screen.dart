import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: h * 0.5,
              width: w,
              color: Colors.blueGrey,
              child: Stack(
                children: [
                  Positioned(
                    top: -50,
                    left: -20,
                    child: customCircle(100, 100),
                  ),
                  Positioned(
                    right: -20,
                    top: -30,
                    child: customCircle(100, 100),
                  ),

                  Positioned(
                    bottom: -50,
                    left: -20,
                    child: customCircle(200, 200),
                  ),
                  Positioned(
                    bottom: -30,
                    right: -10,
                    child: customCircle(70, 70),
                  ),
                  Positioned(
                    left: 10,
                    right: 10,
                    top: -30,
                    child: customCircle(150, 150),
                  ),
                ],
              ),
            ),
            Container(height: h * 0.5, color: Colors.white),
          ],
        ),

        // Positioned(top: h * .1, left: 20, child: profileImage()),
      ],
    );
  }

  Widget profileImage() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow.shade200,
        border: Border.all(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
    );
  }

  Widget customCircle(double h, double w) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
    );
  }
}
