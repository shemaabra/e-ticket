import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Ticket",
                style: GoogleFonts.montserrat(
                  textStyle: Styles.headLineStyle1,
                ),
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              const AppTicketTabs(
                leftTab: "Upcoming",
                rightTab: "Previous",
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(16),
                    vertical: AppLayout.getHeight(21)),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(16),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter Db",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "FDB5221 364896",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      section: 15,
                      isColor: true,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      section: 15,
                      isColor: true,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 3452 ",
                                  style: GoogleFonts.montserrat(
                                    textStyle: Styles.headLineStyle3
                                        .copyWith(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Payment Method',
                              style: GoogleFonts.montserrat(
                                  textStyle: Styles.headLineStyle4),
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$269.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),
              /*
              Bar Code
               */
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(15),
                    ),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/shemaabra',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
