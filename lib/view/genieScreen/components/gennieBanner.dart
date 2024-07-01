import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';

Container gennieBnanner(double height, double width) {
  return Container(
    height: height * 0.5 - 18,
    width: width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffe4ddfe),
            Color(0xffdad3fc),
            Color(0xffd1c9fa),
          ],
        ),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.house_fill,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Home",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  CupertinoIcons.chevron_down,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 170,
              ),
              Icon(
                CupertinoIcons.person_circle_fill,
                size: 35,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 20),
          child: Row(
            children: [
              Text(
                "603 Ramipark,Ramipark Society,Royal Stra..",
                style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Divider(
          color: Colors.black26,
          // thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "genie",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurple.shade800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 4),
              child: Column(
                children: [
                  Text(
                    "Delivering from",
                    style: TextStyle(
                        color: Colors.deepPurple.shade800,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "7 am - 3 am",
                    style: TextStyle(
                        color: Colors.deepPurple.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.1 - 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.15,
              width: width * 0.30,
              color: genie1,
              margin: EdgeInsets.only(top: 40, left: 15),
              child: Text(
                "Pick up or drop off anything instantiy",
                style: TextStyle(
                    color: Colors.deepPurple.shade200,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.fade),
              ),
            ),
            Image.asset(
              'assets/images/intro/gen1.png',
              height: 180,
            ),
          ],
        ),
      ],
    ),
  );
}
