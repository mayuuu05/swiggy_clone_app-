import 'package:flutter/material.dart';

Widget buildCircleAvatar(bool isSelected) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300),
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: isSelected ? 12 : 8,
    width: isSelected ? 12 : 8,
    decoration: BoxDecoration(
      color: isSelected ? Colors.black : Colors.grey,
      shape: BoxShape.circle,
    ),
  );
}