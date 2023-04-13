import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: GoogleFonts.montserrat(
              textStyle: Styles.headLineStyle1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
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
                        "Airline Tickets",
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
                        "Hotels",
                        style: GoogleFonts.montserrat(),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50),
                ),
                color: const Color(0xFFF4F6FD),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(
            AppLayout.getHeight(20),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(
            AppLayout.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(10),
              ),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: GoogleFonts.montserrat(
                  textStyle: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming flight", smallText: "View All"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      "20% Discount on the early booking flight. Don't miss out",
                      style: GoogleFonts.montserrat(
                        textStyle: Styles.headLineStyle2,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: GoogleFonts.montserrat(
                                textStyle: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: GoogleFonts.montserrat(
                                textStyle: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: const Color(
                                  0xFF189999,
                                ),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(15),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(170),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: GoogleFonts.montserrat(
                            textStyle: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Gap(
                          AppLayout.getHeight(5),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 28),
                              ),
                              TextSpan(
                                text: '🥰',
                                style:  TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style:  TextStyle(fontSize: 28),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
