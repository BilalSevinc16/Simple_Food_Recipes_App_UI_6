import 'package:flutter/material.dart';
import 'package:simple_food_recipes_app_ui_6/body_two.dart';
import 'package:simple_food_recipes_app_ui_6/constant.dart';

class BodyThree extends StatelessWidget {
  final String text;

  const BodyThree({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Breakfast",
          style: TextStyle(
            fontSize: 16,
            color: kBlueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 180,
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "HellixBold",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: kOrangeColor,
              size: 16,
            ),
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          "120 Calories",
          style: TextStyle(
            fontSize: 14,
            color: kOrangeColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const BodyTwo(),
      ],
    );
  }
}
