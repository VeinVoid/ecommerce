import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding-2.dart';

class Onboarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffffffff),
        child: Column(
          children: [
            ImageSection(),
            Expanded(  // Membungkus ContentSection dengan Expanded
              child: ContentSection(),
            ),
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
        'assets/page-1/images/ecommerce-checkout-laptop-rafiki.png',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,  // Pusatkan secara vertikal
        children: [
          Center(
            child: Text(
              'Hello, Enjoy Your Online Shopping',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xff4494f1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Browse all categories and shop whatever you are looking for, all products are safe and good at affordable prices',
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
              'assets/page-1/images/group-9.png',
              width: 32,
              height: 10,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboarding2Screen()),
                );
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
                  'NEXT',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
