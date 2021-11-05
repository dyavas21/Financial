import 'package:financialui/widgets/bills.dart';
import 'package:financialui/widgets/card1.dart';
import 'package:financialui/widgets/card2.dart';
import 'package:financialui/widgets/nearby.dart';
import 'package:financialui/widgets/reward.dart';
import 'package:financialui/widgets/top_up.dart';
import 'package:financialui/widgets/transfer.dart';
import 'package:financialui/widgets/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget dashboard() {
      return Container(
        margin: EdgeInsets.only(
          top: 65,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Dashboard',
                style: GoogleFonts.poppins(
                  color: Color(0xff111111),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Image.asset(
              'assets/notif.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget slider() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  Card1(),
                  Card2(),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget menus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Main Menus',
              style: GoogleFonts.poppins(
                color: Color(0xff111111),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopUp(),
                Transfer(),
                Bills(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text(
                      'Top Up',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      'Transfer',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Text(
                      'Bills',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Withdraw(),
                Reward(),
                Nearby(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                    ),
                    child: Text(
                      'Withdraw',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      'Reward',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 17,
                    ),
                    child: Text(
                      'Nearby',
                      style: GoogleFonts.poppins(
                        color: Color(0xff111111),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dashboard(),
          slider(),
          menus(),
        ],
      ),
    );
  }
}
