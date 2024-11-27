import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: const Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Developed by "),
            Text(
              " Mohammad Mihdi ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(" © 2024"),
          ],
        ),
      ),
    );
  }
}
