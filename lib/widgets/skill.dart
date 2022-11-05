import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final Color mainColor;
  final Color mainTextColor;
  const Skills(this.mainColor, this.mainTextColor, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget skill(
        double value, String asset_img, String label, String percentage) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    foregroundImage: AssetImage(
                      asset_img,
                    ),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      color: mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
              Text(
                percentage,
                style: TextStyle(
                  color: mainTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              // shadowColor: shadow_color,

              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(mainColor),
                minHeight: MediaQuery.of(context).size.height * 0.015,
                value: value,
              ),
            ),
          ),
        ],
      );
    }

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: 700,
        height: MediaQuery.of(context).size.height * 0.4,
      ),
      child: Column(
        children: [
          skill(0.5, 'assets/images/flutter.png', 'Flutter', '50%'),
          skill(0.3, 'assets/images/dart.png', 'Dart', '30%'),
          skill(0.5, 'assets/images/python.png', 'Python', '50%'),
          skill(0.7, 'assets/images/aws.png', 'AWS Boto3', '70%'),
        ],
      ),
    );
  }
}
