import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text buildText() {
  return Text.rich(
      TextSpan(
          children: [
            TextSpan(
              text: ' By clicking, I accept the ',
              style: GoogleFonts.roboto(
                  fontSize: 13
              ),
            ),
            TextSpan(
              text: 'terms of service',
              style: GoogleFonts.roboto(
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextSpan(
              text: ' and',
              style: GoogleFonts.roboto(
                  fontSize: 13
              ),
            ),
            TextSpan(
              text: ' privacy policy',
              style: GoogleFonts.roboto(
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
            ),
          ]
      )
  );
}