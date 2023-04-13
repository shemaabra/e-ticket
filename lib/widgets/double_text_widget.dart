import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget  extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,
          style: GoogleFonts.montserrat(textStyle: Styles.headLineStyle2),
        ),
        InkWell(
          onTap: () => {debugPrint("You are Tapped!")},
          child: Text(
            smallText,
            style: GoogleFonts.montserrat(
                textStyle: Styles.textStyle.copyWith(color: Styles.primaryColor)
            ),
          ),
        ),
      ],
    );
  }

}