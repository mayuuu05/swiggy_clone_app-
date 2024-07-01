import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_app/view/genieScreen/components/animatedContaine.dart';
import 'package:swiggy_app/view/genieScreen/components/banners.dart';
import 'package:swiggy_app/view/genieScreen/components/container.dart';

import '../HomeScreen/localMustTry.dart';
import 'components/gennieBanner.dart';

class Geniepage extends StatefulWidget {
  const Geniepage({super.key});

  @override
  State<Geniepage> createState() => _GeniepageState();
}

class _GeniepageState extends State<Geniepage> {
  int disc = 0;

  int change() {
    if (disc == 3) {
      disc = 0;
    } else {
      disc++;
    }
    return disc;
  }

  ScrollController _scrollController = ScrollController();
  int currentPage = 0;
  double imageWidth = 270.0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            gennieBnanner(height, width),
            SizedBox(
              height: height * 0.050,
            ),
            slider(height, width),
            SizedBox(
              height: height * 0.02,
            ),
            buildPadding(height, width),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Do More With Genie',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ],
              ),
            ),
            buildSingleChildScrollView(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    4, (index) => buildCircleAvatar(index == currentPage)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container slider(double height, double width) {
    return Container(
      height: height * 0.080,
      width: width * 0.850,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            height: height * 0.095,
            width: width * 0.750,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: CarouselSlider(
              options: CarouselOptions(
                  height: height * 0.060,
                  autoPlay: true,
                  initialPage: _currentIndex,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
              items: discount.map((i) {
                return Builder(
                    builder: (context) => Row(
                          children: [
                            SizedBox(
                              width: width * 0.060,
                            ),
                            Column(
                              children: [
                                Text(
                                  discount[change()]['disc'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  discount[change()]['info'],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.060,
                            ),
                          ],
                        ));
              }).toList(),
            ),
          ),
          Text(
            ' ${_currentIndex + 1}/${discount.length}',
            style: TextStyle(color: Colors.orange.shade700),
          ),
        ],
      ),
    );
  }

  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        currentPage = (_scrollController.offset / imageWidth).round();
      });
    });
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
