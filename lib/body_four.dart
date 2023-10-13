import 'package:flutter/material.dart';

class BodyFour extends StatelessWidget {
  const BodyFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Calories",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "120 Calories",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 36,
        ),
        Text(
          "Time",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "10 mins",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 36,
        ),
        Text(
          "Total Serve",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "1 Serving",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
