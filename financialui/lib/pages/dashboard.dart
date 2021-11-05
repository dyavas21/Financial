import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget dashboard() {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 70,
                bottom: 30,
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
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          dashboard(),
        ],
      ),
    );
  }
}
