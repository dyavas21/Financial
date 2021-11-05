import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 300,
      height: 190,
      decoration: BoxDecoration(
        color: Color(0xff1BA37A),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 24,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Balance',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: Text(
                '\$12,480,209',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              '••••  ••••  ••••  3901',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
