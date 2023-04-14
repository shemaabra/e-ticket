import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle3
                          ),
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle1
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(10),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(12),
                    vertical: AppLayout.getHeight(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Text(
                        "Search",
                        style: GoogleFonts.montserrat(
                            textStyle: Styles.headLineStyle4
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming flight", smallText: "View All")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(20),
            ),
            child: Row(
              children: ticketList.map((e) => TicketView(ticket: e, isColor: null)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
            ),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View All"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: Row(
              children: hotelList.map((e) => HotelScreen(hotel: e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
