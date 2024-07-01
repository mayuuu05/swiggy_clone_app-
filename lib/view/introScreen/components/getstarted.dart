import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/colors.dart';

GestureDetector getStarted(BuildContext context, double height, double width) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed('/login');
    },
    child: Container(
      margin: EdgeInsets.only(
          bottom: 20,
          top: 10
      ),
      height: height*0.1-30,
      width: width*0.9,
      decoration: BoxDecoration(

          color: mainColor
      ),
      alignment: Alignment.center,
      child:  Text(
        'Get started',
        style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),
      ),
    ),
  );
}