import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
//
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swiggy_app/utils/colors/colors.dart';
import 'package:swiggy_app/utils/globals/diamondList.dart';

import '../../utils/globals/bannerList.dart';
import '../../utils/globals/featureList.dart';
import '../../utils/globals/fimagelist.dart';
import '../../utils/globals/global_variables.dart';
import '../../utils/globals/hotelList.dart';
import '../../utils/globals/mindPlanList.dart';

class DineOutScreen extends StatefulWidget {const DineOutScreen({super.key});

@override
State<DineOutScreen> createState() => _DineOutScreenState();
}

class _DineOutScreenState extends State<DineOutScreen> {
  int change() {
    if (value1 == 5) {
      value1 = 0;
    } else {
      value1++;
    }
    return value1;
  }
  int change1()
  {
    if(value==5)
    {
      value=0;
    }
    else {
      value++;
    }
    return value;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    void _showFilterBottomSheet(BuildContext context) {
      showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (context) => Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '\nBook a table',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\nWithin 5km',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\nPure Veg',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\nRating 4+',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.400,
                    width: 1,
                    color: Colors.grey,
                    margin: EdgeInsets.only(left: 7),
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        '  SORT BY',
                        style: TextStyle(
                            letterSpacing: 5),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  filter_value = 0;
                                });
                              },
                              icon: (filter_value ==
                                  0)
                                  ? Icon(
                                Icons
                                    .radio_button_checked,
                                color: Colors
                                    .deepOrange,
                              )
                                  : Icon(
                                Icons
                                    .circle_outlined,
                                color:
                                Colors.grey,
                              )),
                          Text(
                            'Relevance',
                            style: TextStyle(
                                fontWeight:
                                (filter_value ==
                                    0)
                                    ? FontWeight
                                    .bold
                                    : FontWeight
                                    .normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  filter_value = 1;
                                });
                              },
                              icon: (filter_value ==
                                  1)
                                  ? Icon(
                                Icons
                                    .radio_button_checked,
                                color: Colors
                                    .deepOrange,
                              )
                                  : Icon(
                                Icons
                                    .circle_outlined,
                                color:
                                Colors.grey,
                              )),
                          Text(
                            'Delivery Time',
                            style: TextStyle(
                                fontWeight:
                                (filter_value ==
                                    1)
                                    ? FontWeight
                                    .bold
                                    : FontWeight
                                    .normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  filter_value = 2;
                                });
                              },
                              icon: (filter_value ==
                                  2)
                                  ? Icon(
                                Icons
                                    .radio_button_checked,
                                color: Colors
                                    .deepOrange,
                              )
                                  : Icon(
                                Icons
                                    .circle_outlined,
                                color:
                                Colors.grey,
                              )),
                          Text(
                            'Rating',
                            style: TextStyle(
                                fontWeight:
                                (filter_value ==
                                    2)
                                    ? FontWeight
                                    .bold
                                    : FontWeight
                                    .normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  filter_value = 3;
                                });
                              },
                              icon: (filter_value ==
                                  3)
                                  ? Icon(
                                Icons
                                    .radio_button_checked,
                                color: Colors
                                    .deepOrange,
                              )
                                  : Icon(
                                Icons
                                    .circle_outlined,
                                color:
                                Colors.grey,
                              )),
                          Text(
                            'Cost: LowtoHigh',
                            style: TextStyle(
                                fontWeight:
                                (filter_value ==
                                    3)
                                    ? FontWeight
                                    .bold
                                    : FontWeight
                                    .normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  filter_value = 4;
                                });
                              },
                              icon: (filter_value ==
                                  4)
                                  ? Icon(
                                Icons
                                    .radio_button_checked,
                                color: Colors
                                    .deepOrange,
                              )
                                  : Icon(
                                Icons
                                    .circle_outlined,
                                color:
                                Colors.grey,
                              )),
                          Text(
                            'Cost: HightoLow',
                            style: TextStyle(
                                fontWeight:
                                (filter_value ==
                                    4)
                                    ? FontWeight
                                    .bold
                                    : FontWeight
                                    .normal,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.090,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget dineOutBox(double height, double width, String img, String name,
        String price, String distance, String location, String rate) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: height * 0.4 ,
            width: width * 0.9 ,
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2
                )
              ],
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(img),
                  opacity: 0.6
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 270, top: 7),
                  child: IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.white,
                      size: 27,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.9),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: height * 0.1 - 24,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        // borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 2)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(
                        //   width: 6,
                        // ),
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        // SizedBox(
                        //   width: 146.7,
                        // ),
                        Text(
                          '⭐${rate}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: height * 0.135,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 8),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              price,
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8,
                            right: 8
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              location,
                              style: TextStyle(fontSize: 13,overflow: TextOverflow.clip),
                            ),
                            Text(
                              distance,
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: height * 0.040,
                          width: width * 0.8 + 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF1BA26E),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/intro/discount.png',
                                height: 17,
                              ),
                              Text(
                                'Flat 20% off on pre-booking',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '+2 more',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            )),
      );

    }
    GestureDetector(
      onTap: () {
        setState(() {
          ch = !ch;
        });
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: height * 0.3,
              width: width * 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  filterQuality: FilterQuality.medium,
                  opacity: 0.3,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.plus),
                  image: AssetImage('assets/img/feature/villa.jpg'),
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Stack(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20,
                        top: 20
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText('PAY DAY',
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w900
                            )),

                      ],
                      repeatForever: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60,left: 20
                    ),
                    child: Text('Enjoy sweet deals & great meals!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,

                        )),

                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 100,
                        left: 20
                    ),
                    height: height*0.03,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        color: Colors.orange,borderRadius: BorderRadius.circular(20)
                    ),alignment: Alignment.center,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText('Order Now >',textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          shadows: [
                            Shadow(
                              blurRadius: 7.0,
                              color: Colors.white,
                              offset: Offset(0, 0),
                            ),
                          ],
                        )),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 160,left: 20,right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/search');
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F0F5),
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Text(
                                'Search for ',
                                style:
                                TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Expanded(
                                child: AnimatedTextKit(
                                  animatedTexts: [
                                    RotateAnimatedText(
                                      "'Hotels'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Cafe'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Mc donalds'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Burger King'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                    RotateAnimatedText(
                                      "'Mr.sandwich'",
                                      duration: Duration(seconds: 1),
                                      textStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                  repeatForever: true,
                                  pause: Duration(milliseconds: 500),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.3,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              VerticalDivider(
                                thickness: 1.5,
                                color: Colors.grey.shade400,
                                endIndent: 5,
                                indent: 5,
                              ),
                              Icon(
                                Icons.mic,
                                color: Color(0xfff1f4fb),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.2,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
              ),
              items: bannerList.map((i) {
                // print('shalu $i');
                return Builder(
                  builder: (context) =>
                      Container(
                        margin: EdgeInsets.all(5),
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        height: height * 0.2-40,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(bannerList[change()]['banner']),
                          ),
                        ),
                      ),
                );
              }).toList(),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 10, right: 70),
              child: Text(
                'HEY,WHAT`S ON YOUR MIND ?',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                SizedBox(
                  height: 10,
                ),
                ...List.generate(
                  mindPlanList.length,
                      (index) => box2(
                      img1: mindPlanList[index]['img1'],
                      name1: mindPlanList[index]['name1'],
                      width: width,
                      height: height),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 100,top: 20),
              child: Text(
                'WHAT`S HOT ON DINEOUT',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),

            SizedBox(
                height: height*0.02
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: width*0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 1;
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: (choice == 1) ? Colors.black : null,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Trending resturant',
                          style: TextStyle(
                              color:
                              (choice == 1) ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 2;
                        print(choice);
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: (choice == 2) ? Colors.black : null,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Deals of the day',
                          style: TextStyle(
                              color: (choice == 2) ? Colors.white : null),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        choice = 3;
                      });
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: (choice == 3) ? Colors.black : null,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                          child: Text(
                            'Pre-books offers',
                            style: TextStyle(
                                color: (choice == 3) ? Colors.white : null),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View all',style: TextStyle(
                      color: mainColor
                  ),),
                  Icon(Icons.arrow_circle_right_outlined),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Wrap(
                    children: [
                      ...List.generate(
                        dineOutHotelDetailList.length,
                            (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(onTap: (){
                            setState(() {
                              selectedIndex=index;
                            });
                            Navigator.of(context).pushNamed('/detail');
                          },
                            child: dineOutBox(
                              height,
                              width,
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['img']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['img']
                                  : dineOutHotelDetailList3[index]['img'],
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['name']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['name']
                                  : dineOutHotelDetailList3[index]['name'],
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['price']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['price']
                                  : dineOutHotelDetailList3[index]['price'],
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['distance']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['distance']
                                  : dineOutHotelDetailList3[index]['distance'],
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['location']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['location']
                                  : dineOutHotelDetailList3[index]['location'],
                              (choice == 1)
                                  ? dineOutHotelDetailList[index]['rate']
                                  : (choice == 2)
                                  ? dineOutHotelDetailList2[index]['rate']
                                  : dineOutHotelDetailList3[index]['rate'],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140),
              child: Text(
                'FEATURED THIS WEEK',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
              ),
              items: featureList.map((i) {
                // print('shalu $i');
                return Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.all(10),
                    height: height * 0.3,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.9,
                        image: AssetImage(featureList[change1()]['img2']),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.400 - 20,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black45, blurRadius: 2)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  featureList[change()]['discount'],
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10
                                ),
                                child: Text(
                                  featureList[change()]['name2'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      featureList[change()]['area'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 110, left: 25),
                  child: Text(
                    'POPULAR LOCATION',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, letterSpacing: 2,wordSpacing: 2),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: [

                  ...List.generate(
                    7,
                        (index) => Container(
                      height: height * 0.1 ,
                      width: width * 0.3-15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        // color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage(diamondList[index]['box']),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 145),
              child: Text(
                'EXPLORE CRAVINGS',
                style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 2,wordSpacing: 2),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    fimagelist.length,
                        (index) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: height*0.1,
                          width: width*0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(fimagelist[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          fimagelist[index]['foodName'],
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30,
                    left: 15
                ),
                child: Row(
                  children: [
                    GestureDetector(
                    onTap: () => _showFilterBottomSheet(context),
              child: _buildFilterContainer(context),
            ),
                    SizedBox(width: 10),
                    _buildDropdownButton(),
                    SizedBox(width: 10),
                    _buildTextContainer('Book a table', 120),
                    SizedBox(width: 10),
                    _buildTextContainer('Within 5km', 110),
                    SizedBox(width: 10),
                    _buildTextContainer('Pure Veg', 90),
                    SizedBox(width: 10),
                    _buildTextContainer('Rating 4+', 90),
                    SizedBox(width: 10),
                    _buildTextContainer('Serves Alcohol', 120),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                '518 restaurants to explore',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Wrap(
              children: [
                ...List.generate(
                  dineOutHotelDetailList.length,
                      (index) => GestureDetector(onTap: (){
                    setState(() {

                      selectedIndex=index;

                    });
                    Navigator.of(context).pushNamed('/detail');
                  },
                    child: dineOutBox2(
                      height,
                      width,
                      dineOutHotelDetailList[index]['img'],
                      dineOutHotelDetailList[index]['name'],
                      dineOutHotelDetailList[index]['price'],
                      dineOutHotelDetailList[index]['distance'],
                      dineOutHotelDetailList[index]['location'],
                      dineOutHotelDetailList[index]['rate'],

                      // (choice == 1)
                      //     ? dineOutHotelDetailList[index]['like']
                      //     : (choice == 2)
                      //     ? dineOutHotelDetailList2[index]['like']
                      //     : dineOutHotelDetailList3[index]['like'],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget dineOutBox2(double height, double width, String img, String name,
      String price, String distance, String location, String rate) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: height * 0.4 ,
          width: width * 0.9 ,
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2
              )
            ],
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
                opacity: 0.6
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 270, top: 7),
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                    size: 27,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.9),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: height * 0.1 - 24,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      // borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),

                      Text(
                        '⭐${rate}',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.135,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            price,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8,
                          right: 8
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            location,
                            style: TextStyle(fontSize: 13,overflow: TextOverflow.clip),
                          ),
                          Text(
                            distance,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: height * 0.040,
                        width: width * 0.8 + 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1BA26E),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/intro/discount.png',
                              height: 17,
                            ),
                            Text(
                              'Flat 20% off on pre-booking',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '+2 more',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )),
    );

  }

  Container buildContainer(BuildContext context, String img2) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img2),
          )),
    );
  }
}

Widget box2(
    {required String img1,
      required String name1,
      required double height,
      required double width}) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      margin: EdgeInsets.all(6),
      height: height * 0.2 - 28,
      width: width * 0.280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 13),
            child: Text(
              name1,
              style:
              TextStyle(height: 1, fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7, top: 7, left: 7),
            child: Container(
              height: height * 0.1 ,
              width: width * 0.4-40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.8,
                  image: AssetImage(img1),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}



Widget _buildTextContainer(String text, double width) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5),
    height: 40,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black12),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 14),
      ),
    ),
  );
}
Widget _buildFilterContainer(BuildContext context) {
  return Container(
    height: 40,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black12),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Filter',
          style: TextStyle(fontSize: 15),
        ),
        Icon(CupertinoIcons.slider_horizontal_3,size: 20,)
      ],
    ),
  );
}

Widget _buildDropdownButton() {
  return Container(
    height: 40,
    width: 130,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black12),
    ),
    child: Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            'Sort by',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              enabled: false,
              child: StatefulBuilder(
                builder: (context, menuSetState) {
                  final isSelected = selectedItems.contains(item);
                  return InkWell(
                    onTap: () {
                      isSelected ? selectedItems.remove(item) : selectedItems.add(item);
                    },
                    child: Container(
                      height: double.infinity,
                      width: 300,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          if (isSelected)
                            const Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.deepOrange,
                            )
                          else
                            const Icon(Icons.radio_button_off),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }).toList(),
          value: selectedItems.isEmpty ? null : selectedItems.last,
          onChanged: (value) {},
          selectedItemBuilder: (context) {
            return items.map(
                  (item) {
                return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    selectedItems.join(', '),
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                );
              },
            ).toList();
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(left: 16, right: 8),
            height: 40,
            width: 180,
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    ),
  );
}

List<String> _filterOptions = [
  'Relevance',
  'Distance: Nearby To Far',
  'Popularity: High to Low',
  'Cost: Low to High',
  'Cost: High to Low',
];