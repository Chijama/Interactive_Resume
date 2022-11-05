import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/Method.dart';
import '../models/Category.dart';
import 'package:scaled_list/scaled_list.dart';

class Projects extends StatelessWidget {
  Projects({super.key});
  final List<Category> categories = [
    Category(
        image: "assets/images/meal_app.jpg",
        name: "Meal App",
        link: 'https://github.com/Chijama/Meals-App',
        institution: ''),
    Category(
        image: "assets/images/video.jpg",
        name: "Video Note Taking App",
        link: 'https://github.com/Chijama/Video_Notes_App',
        institution: ''),
    Category(
        image: "assets/images/budget.jpg",
        name: "Budget App",
        link: 'https://github.com/Chijama/budgetApp',
        institution: ''),
    Category(
        image: "assets/images/resume.jpg",
        name: "Interactive Resume",
        link: 'https://github.com/Chijama/Interactive-Resume',
        institution: ''),
    //   Category(
    //       image: "assets/images/5.png",
    //       name: "Pasta",
    //       link:
    //           'This application enables efficient and convinient note taking experience from both online and offline videos'),
  ];
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    double size = MediaQuery.of(context).size.width * 0.45;
    return Center(
      child: ScaledList(
        itemCount: categories.length,
        cardWidthRatio: 0.45,
        itemColor: (index) {
          return kMixedColors[index % kMixedColors.length];
        },
        itemBuilder: (index, selectedIndex) {
          final category = categories[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: selectedIndex == index
                      ? double.infinity
                      : double.infinity * 0.3,
                  width: selectedIndex == index
                      ? double.infinity
                      : double.infinity * 0.5,
                  child: Image.asset(category.image, fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      category.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: selectedIndex == index
                              ? size * 0.045
                              : size * 0.035),
                    ),
                    IconButton(
                        onPressed: () {
                          method.launchURL(category.link);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: size * 0.045,
                        ))
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  final List<Color> kMixedColors = [
    Color(0xff71A5D7),
    Color(0xff72CCD4),
    Color(0xffFBAB57),
    Color(0xffF8B993),
    Color(0xff962D17),
    Color(0xffc657fb),
    Color(0xfffb8457),
  ];
}
