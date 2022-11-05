import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final Color shadow_color;
  final Color mainTextColor;
  final String title;
  const TitleWidget(this.shadow_color, this.mainTextColor, this.title,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: shadow_color,
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width / 3,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.spirax(
                color: mainTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
