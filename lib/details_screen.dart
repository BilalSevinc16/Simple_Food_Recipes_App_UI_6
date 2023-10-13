import 'package:flutter/material.dart';
import 'package:simple_food_recipes_app_ui_6/body_four.dart';
import 'package:simple_food_recipes_app_ui_6/constant.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  final String name;
  final String image;
  final bool tags;

  const DetailsScreen({
    super.key,
    required this.index,
    required this.name,
    required this.image,
    required this.tags,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: 58,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 32),
          decoration: const BoxDecoration(
            color: kOrangeColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
          ),
          child: const Text(
            "Back",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "HellixBold",
              color: kLightColor,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 64,
            left: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28),
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: kLightColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 36,
                    fontFamily: "HellixBold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "HellixBold",
                        color: kOrangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " 250.25",
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: "HellixBold",
                        color: kOrangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.6,
                      child: const BodyFour(),
                    ),
                    Hero(
                      tag: widget.tags
                          ? "fresh${widget.index}"
                          : "recommend${widget.index}",
                      child: Image.asset(
                        widget.image,
                        height: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "HellixBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 28.0, bottom: 28),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standart dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: "HellixBold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
