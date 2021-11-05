import 'package:financialui/pages/dashboard.dart';
import 'package:financialui/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(FinancialUi());

class FinancialUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => GetStarted(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
