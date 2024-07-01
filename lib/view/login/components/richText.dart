import 'package:flutter/material.dart';

Text buildText() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
            text: '    By clicking , I accept the ',
            style: TextStyle(color: Colors.grey, fontSize: 11)),
        TextSpan(
            text: 'Terms & Conditions ',
            style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        TextSpan(
            text: 'and ',
            style: TextStyle(color: Colors.grey, fontSize: 11)),
        TextSpan(
            text: 'Privacy Pol...',
            style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}