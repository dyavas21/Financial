import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 18,
      ),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Image.asset(
          'assets/bills.png',
          width: 34,
        ),
      ),
    );
  }
}
