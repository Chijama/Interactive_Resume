import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/Method.dart';
import '../models/Category.dart';
import 'package:scaled_list/scaled_list.dart';

class Certifications extends StatelessWidget {
  Certifications({super.key});
  final List<Category> categories = [
    Category(
        image: "assets/images/huawei.jpg",
        name: "Cyber Security Certificate for Service work",
        link: '',
        institution: 'Huawei'),
    Category(
        image: "assets/images/oracle.jpg",
        name: "Database Foundations",
        link: '',
        institution: 'Oracle Academy'),
    Category(
        image: "assets/images/Autocad.jpg",
        name: "Autodesk Certified Professional",
        link: '',
        institution: 'Coursera'),
    Category(
        image: "assets/images/matrixAlgebra.jpg",
        name: "Matrix Algebra",
        link: '',
        institution: 'Coursera'),
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
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: selectedIndex == index
                              ? size * 0.04
                              : size * 0.03),
                    ),
                    Text(
                      category.institution,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: selectedIndex == index
                              ? size * 0.03
                              : size * 0.02),
                    ),
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
