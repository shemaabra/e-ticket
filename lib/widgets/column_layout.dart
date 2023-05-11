import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment alignment;

  const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    this.isColor,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null ? GoogleFonts.montserrat(
              textStyle: Styles.headLineStyle3.copyWith(
                  color: Colors.white)) : GoogleFonts.montserrat(
            textStyle: Styles.headLineStyle3.copyWith(
                color: Colors.black)),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: isColor == null ? GoogleFonts.montserrat(
            textStyle: Styles.headLineStyle4.copyWith(
                color:  Colors.white)):GoogleFonts.montserrat(
              textStyle: Styles.headLineStyle4.copyWith(
                  color:  Colors.black54))
        ),
      ],
    );
  }
}
