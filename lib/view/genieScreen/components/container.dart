import 'package:flutter/material.dart';

Padding buildPadding(double height, double width) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: height * 0.20,
      width: width / 1.1,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 3,),
          ],
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pick up or send anything", style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900),),
            Text("Sit bock, relax and let Genie do the rest",
              style: TextStyle(fontSize: 12),),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 35),
              height: height * 0.050,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(13)
              ),
              child: Text(
                ' Set pick up & drop location   > ', style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),),
            )
          ],
        ),
      ),
    ),
  );
}