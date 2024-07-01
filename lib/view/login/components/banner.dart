import 'package:flutter/material.dart';

Container banner(double height, double width) {
  return Container(
    height: height * 0.50+20,
    width: width * 1,
    decoration: BoxDecoration(color: Color(0xfff1f4fb)),
    child: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 250, right: 170, left: 10),
          child: Text(
            'LIVE FOR FOOD',
            style: TextStyle(
                height: 0.8,
                color: Colors.black12,
                fontSize: 55,
                fontWeight: FontWeight.w900,
                letterSpacing: -2,
                wordSpacing: -15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 230, left: 120),
          child: Container(
            height: height * 0.3 + 25,
            width: width * 0.3 + 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/intro/log.png',),
              ),
            ),
          ),
        )
      ],
    ),
  );
}