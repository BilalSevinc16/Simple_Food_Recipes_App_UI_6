import 'package:flutter/material.dart';
import 'package:simple_food_recipes_app_ui_6/constant.dart';

class BodyOne extends StatelessWidget {
  final String text;
  final String text2;

  const BodyOne({
    Key? key,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontFamily: "HellixBold",
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () => print(text2),
          child: const Text(
            "See All",
            style: TextStyle(
              fontSize: 18,
              color: kOrangeColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
