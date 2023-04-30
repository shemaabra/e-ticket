import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, required this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?175:175),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing blue part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                // color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: GoogleFonts.montserrat(
                            textStyle: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black)),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext, BoxConstraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (BoxConstraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: AppLayout.getWidth(3),
                                        height: AppLayout.getHeight(1),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: GoogleFonts.montserrat(
                            textStyle: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black)),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: GoogleFonts.montserrat(
                              textStyle: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4
                                      .copyWith(color: Colors.black54)),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: GoogleFonts.montserrat(
                            textStyle: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black)),
                        // style:
                        //     Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: GoogleFonts.montserrat(
                              textStyle: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4
                                      .copyWith(color: Colors.black54)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing orange part of the card/ticket
            */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? const Color(0xFFeeedf2):Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(6.0)),
                    child: LayoutBuilder(
                      builder: (BuildContext, BoxConstraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (BoxConstraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            showing bottom  orange part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(isColor==null?AppLayout.getHeight(21):AppLayout.getHeight(0)),
                  bottomLeft: Radius.circular(isColor==null?AppLayout.getHeight(21):AppLayout.getHeight(0)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: GoogleFonts.montserrat(
                                textStyle: Styles.headLineStyle3.copyWith(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: GoogleFonts.montserrat(
                                textStyle: Styles.headLineStyle3.copyWith(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: GoogleFonts.montserrat(
                              textStyle: Styles.headLineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
