
import 'dart:async';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/colors.dart';
import '../../utils/globals/global_variables.dart';
import '../../utils/globals/imageList.dart';
import '../../utils/globals/itemlist.dart';
import '../../utils/globals/offerList.dart';
import '../../utils/globals/restaurantList.dart';




class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  void initState() {
    super.initState();
    startAutoChange();
  }

  void startAutoChange() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dividerColor = dividerColor == mainColor ? mainColor : mainColor;
        thickness = thickness == 2.0 ? 2.0 : 2.0;
        indent = indent == 50.0 ? 100.0 : 50.0;
        endIndent = endIndent == 50.0 ? 100.0 : 50.0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height*0.3+30,
              width: width*5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                        mainColor.withOpacity(0.1),
                        Colors.white,

                      ]
                  ),
                  // color: ,

              ),
              child: Column(
                children: [
                  ListTile(
                    leading:Icon(Icons.home,color: Colors.black,size: 25,),
                    title: Text('Home',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,

                    ),),
                    subtitle: Text('Dindoli , Surat  -  394210'),
                    trailing: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/acc');
                      },
                      child: Icon(CupertinoIcons.person_circle_fill, size: 40),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 8,
                        top: 20
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/search');
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Text('Search for ',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),),
                              Expanded(
                                child: AnimatedTextKit(animatedTexts: [
                                  RotateAnimatedText("'Burger'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                                  RotateAnimatedText("'Cake'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                                  RotateAnimatedText("'Pizza'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                                  RotateAnimatedText("'Biryani'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                                  RotateAnimatedText("'Rolls'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),

                                ],
                                  repeatForever: true,
                                  pause: Duration(milliseconds: 500),
                                ),
                              ),
                              SizedBox(width: width*0.3,),
                              Icon(Icons.search,color: Colors.grey,),
                              VerticalDivider(
                                thickness: 1.5,
                                color: Colors.grey.shade400,
                                endIndent: 5,
                                indent: 5,
                              ),
                              Icon(Icons.mic,color: mainColor,)

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IT'S A  ",style: TextStyle(
                        color: mainColor,
                        fontSize: 30
                      ),),
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('PAY DAY',
                              textStyle: TextStyle(
                                  color: mainColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900
                              )),

                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),


                    ],
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Divider(
                      color: dividerColor,
                      thickness: thickness,
                      endIndent: endIndent,
                      indent: indent,
                    ),
                  ),
                  Expanded(
                    child: AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText("FLASH SALE LIVE",textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 12),),
                      TyperAnimatedText("FLAT ₹175 OFF & MORE",textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 12),),
                      TyperAnimatedText("%50 OFF STREET FOOD",textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 12),),
                    ],
                      repeatForever: true,
                      pause: Duration(milliseconds: 900),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 15
              ),
              child: SizedBox(
                height: height/50,
                child: Text('RECOMMENDED FOR YOU',style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    letterSpacing: 2,
                    wordSpacing: 3,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        (Quickly==0) ? Colors.black : Colors.white70,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Quickly=0;
                      });
                    },
                    child: Text(
                      'Local Must-Try',
                      style: TextStyle(
                        color: (Quickly == 0) ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          (Quickly==1) ? Colors.black : Colors.white70,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          Quickly=1;
                        });
                      },
                      child: Text(
                        'Get It Quickly',
                        style: TextStyle(
                          color: (Quickly == 1) ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  ...List.generate(
                    6,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                                                children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  selected=index;
                                  listNo=0;
                                  Navigator.of(context).pushNamed('/local');
                                },
                                child: Container(
                                  height: height * 0.150,
                                  width: width*0.290,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                      image: AssetImage((Quickly == 0)
                                          ? offer[index]['img']
                                          : timeList[index]['img']),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(top: 75, left: 7),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          (Quickly == 0)
                                              ? offer[index]['name']!
                                              : timeList[index]['name']!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          (Quickly == 0)
                                              ? offer[index]['off']!
                                              : timeList[index]['off']!,
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                (Quickly == 0)
                                    ? offer[index]['foodname']!
                                    : timeList[index]['foodname']!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                (Quickly == 0)
                                    ? offer[index]['duration']!
                                    : timeList[index]['duration']!,
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                                                ],
                                              ),
                        ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 7,
              endIndent: 7,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('See more restaurant ',style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.deepOrange,size: 15,)
                  ],
                ),
              ),
            ),
            Divider(
              indent: 7,
              endIndent: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).pushNamed('/offerZone');
                    },
                    child: Container(
                      height: height*0.09+10,
                      width: width*0.3-18,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/images/intro/ob1.png',),
                              fit: BoxFit.cover
                          ),
                          border: Border.all(
                              color: Colors.grey.shade400
                          ),
                          borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2
                          )
                        ]
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).pushNamed('/award');
                    },
                    child: Container(
                      height: height*0.09+10,
                      width: width*0.3-18,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/images/intro/ob2.png',),
                              fit: BoxFit.cover
                          ),
                          border: Border.all(
                              color: Colors.grey.shade400
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2
                            )
                          ]
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).pushNamed('/loPage');
                    },
                    child: Container(
                      height: height*0.09+10,
                      width: width*0.3-18,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/images/intro/ob3.png',),
                              fit: BoxFit.cover
                          ),
                          border: Border.all(
                              color: Colors.grey.shade400
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2
                            )
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.020),
            Row(
              children: [
                Text('    Customer, What\'s on your mind?',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.020),
            Container(
                height: height * 0.290,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            imagelist.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    listNo = 1;
                                    selected = index;
                                    Navigator.of(context).pushNamed('/local');
                                  },
                                  child: Column(
                                    children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            imagelist[index]['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    imagelist[index]['foodName'],
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                                                ],
                                                              ),
                                ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            imagelist1.length,
                                (index) => Column(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    Navigator.of(context).pushNamed('/menu');
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            imagelist1[index]['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(imagelist1[index]['fdnam'],
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30,
                    left: 15
                ),
                child: Row(
                  children: [
                    GestureDetector(child: _buildFilterContainer(context),onTap: () {
                      setState(() {

                      });
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 20),
                                  child: Text(
                                    'Filter',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sort',
                                            style: TextStyle(
                                                color:
                                                Colors.deepOrange,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            '\nVeg/Non-Veg',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '\nRatings',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '\nDelivery Time',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '\nCost For two',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: height * 0.090,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.450,
                                      width: 1,
                                      color: Colors.grey,
                                      margin: EdgeInsets.only(left: 50),
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
                          ));
                    },),
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
              height: height * 0.020,
            ),
            Text('    1320 restaurants to explore',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height * 0.020,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...List.generate(
                      reversedList.length,
                          (index) => Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.more_vert),
                              ),
                              InkWell(
                                onTap: () {
                                  listNo = 1;
                                  selected = index;
                                  Navigator.of(context).pushNamed('/local');
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.200,
                                      width: width * 0.360,
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          opacity: 0.7,
                                          image: AssetImage(
                                              reversedList[index]['img']),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Spacer(),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.white,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height*0.08,
                                          ),
                                          Text(
                                            '  ${reversedList[index]['name']}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '  ${reversedList[index]['off']}',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  ${reversedList[index]['foodname']}',
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '  ⭐ ${reversedList[index]['rate']} | ${reversedList[index]['duration']}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          '  ${reversedList[index]['add']}',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          '  ${reversedList[index]['km']}',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          height: height * 0.060,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                color: Theme.of(context).hintColor,
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
                        setState(() {});
                        menuSetState(() {});
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
}

