import 'package:flutter/material.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final String location;
  final Color mainTextColor;
  final Color burgundyTextColor;

  const WorkCustomData({
    required this.title,
    required this.subTitle,
    required this.duration,
    required this.location,
    required this.mainTextColor,
    required this.burgundyTextColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: mainTextColor,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              duration,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: burgundyTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            Text(
              location,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: burgundyTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
