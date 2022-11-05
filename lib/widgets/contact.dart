import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/Method.dart';

class Contact extends StatelessWidget {
  final Color color;
  final Color burgundy;
  final Color mainColor;
  const Contact(this.color, this.burgundy, this.mainColor, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget contactIcons(
      IconData icon,
      String url,
    ) {
      return IconButton(
        onPressed: () => Method().launchURL(url),
        icon: FaIcon(icon),
        iconSize: MediaQuery.of(context).size.width * 0.015,
        color: mainColor,
      );
    }

    return Center(
      child: Column(children: [
        Text('Get in touch',
            style: TextStyle(
                color: color, fontSize: 30.0, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10.0),
        Text(
          "I'd love to hear from you.",
          style: TextStyle(
            color: burgundy,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            contactIcons(FontAwesomeIcons.github, "https://github.com/Chijama"),
            contactIcons(FontAwesomeIcons.instagram,
                "https://www.instagram.com/_shan.elle/"),
            contactIcons(FontAwesomeIcons.linkedinIn,
                "https://www.linkedin.com/in/chidera-chijama-1569b918b/"),
            contactIcons(Icons.phone, "tel:+2347057172486"),
            contactIcons(Icons.sms, "sms:+2347057172486"),
            contactIcons(Icons.mail, "mailto:chijamachidera2@gmail.com"),
          ],
        )
      ]),
    );
  }
}
