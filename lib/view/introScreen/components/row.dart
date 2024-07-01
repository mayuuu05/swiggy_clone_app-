import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/colors.dart';

Row row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Food',style: GoogleFonts.roboto(
          letterSpacing: 1,
          color: Colors.white,fontSize: 18,
          fontWeight: FontWeight.w500
      ),),
      CircleAvatar(
        radius: 3,

        backgroundColor: mainColor,
      ), Text('Instamart',style: GoogleFonts.roboto(
        color: Colors.white70,fontSize: 18,
        letterSpacing: 1,
      ),),
      CircleAvatar(
        radius: 3,
        backgroundColor: mainColor,
      ), Text('Dineout',style: GoogleFonts.roboto(
        color: Colors.white70,fontSize: 18,
        letterSpacing: 1,
      ),),
    ],
  );
}