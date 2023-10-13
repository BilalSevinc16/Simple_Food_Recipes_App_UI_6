import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_food_recipes_app_ui_6/body_three.dart';
import 'package:simple_food_recipes_app_ui_6/body_two.dart';
import 'package:simple_food_recipes_app_ui_6/constant.dart';
import 'package:simple_food_recipes_app_ui_6/details_screen.dart';
import 'package:simple_food_recipes_app_ui_6/image_list.dart';
import 'package:simple_food_recipes_app_ui_6/body_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 64,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print("Menu"),
                    child: SvgPicture.asset(
                      "assets/icons/menu.svg",
                      height: 32,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("Notification"),
                    child: SvgPicture.asset(
                      "assets/icons/notification.svg",
                      height: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Bonjor Bilal",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "What would you like to cook today?",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: "HellixBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const TextField(
                        cursorColor: kDarkColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 34,
                          ),
                          hintText: "Search for recipes",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap: () => print("Filter"),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 18,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/settings.svg",
                        colorFilter: const ColorFilter.mode(
                          kDarkColor,
                          BlendMode.srcIn,
                        ),
                        height: 22,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const BodyOne(
                text: "Today's Fresh Recipes",
                text2: "See All Fresh Recipes",
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: freshList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index: index,
                            name: freshList[index]["name"],
                            image: freshList[index]["image"],
                            tags: true,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 240,
                        width: 200,
                        margin: const EdgeInsets.only(right: 32),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 16,
                              left: 16,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              top: -30,
                              right: -70,
                              child: Hero(
                                tag: "fresh$index",
                                child: Image.asset(
                                  freshList[index]["image"],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: BodyThree(
                                  text: freshList[index]["name"],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              const BodyOne(
                text: "Recommended",
                text2: "See All Recommended",
              ),
              const SizedBox(height: 16),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recommendedList.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          index: index,
                          name: recommendedList[index]["name"],
                          image: recommendedList[index]["image"],
                          tags: false,
                        ),
                      ),
                    ),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: "recommend$index",
                            child: Image.asset(
                              recommendedList[index]["image"],
                              height: 200,
                              width: 120,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
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
                                  const SizedBox(height: 6),
                                  Text(
                                    recommendedList[index]["name"],
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: "HellixBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
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
                                      const SizedBox(width: 6),
                                      const Text(
                                        "120 Calories",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: kOrangeColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  const BodyTwo(),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              height: 28,
                              width: 36,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
