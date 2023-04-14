import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_layout.dart';

class AppTicketTabs  extends StatelessWidget {
  final String leftTab;
  final String rightTab;

  const AppTicketTabs({super.key, required this.leftTab, required this.rightTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            /*
                     Airline Tickets
                   */
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  leftTab,
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ),
            /*
                    Hotels
                   */
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(
                  rightTab,
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}