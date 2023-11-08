import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome-screen.dart';

class Onboarding2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffffffff),
        child: ListView(
          children: [
            ImageSection(),
            ContentSection(),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/page-1/images/ecommerce-web-page-rafiki.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Enjoy Promotions\nAt Our Shop',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff4494f1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            'Enjoy discounts of up to 50% in our shop right now\nand get various other benefits. Happy shopping!',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Center(
            child: Image.asset(
              'assets/page-1/images/group-10.png',
              width: 39,
              height: 12,
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => WelcomeScreen(),
              ));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff4494f1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
              child: Text(
                'GET STARTED',
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
