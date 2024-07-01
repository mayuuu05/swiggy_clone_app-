import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_app/view/HomeScreen/localMustTry.dart';

import '../../utils/globals/diamondList.dart';
import '../../utils/globals/global_variables.dart';
import '../../utils/globals/offerList.dart';
import 'OfferZone.dart';

class RestaurantawardsPage extends StatefulWidget {
  const RestaurantawardsPage({super.key});

  @override
  State<RestaurantawardsPage> createState() => _RestaurantawardsPageState();
}

class _RestaurantawardsPageState extends State<RestaurantawardsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(37),
                  bottomRight: Radius.circular(37),
                ),
                gradient: LinearGradient(
                  begin:Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.grey,
                    Colors.black,
                  ],),
                image: DecorationImage(image: AssetImage("assets/images/intro/trophy1.png",),fit: BoxFit.cover ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_left,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10,left: 10
              ),
              child: Row(
                children: [
                  Text(
                    '  Top Picks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  ...List.generate(
                      name1.length,
                          (index) => Stack(children: [
                        Container(
                          margin: EdgeInsets.all(2),
                          height: height*0.2-20,
                          width: width*0.3,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage(name1[index]['img']),
                                  fit: BoxFit.cover,
                                  opacity: 0.4
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(name1[index]['name'],style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 25
                            ),),
                          ),
                        ),
                      ]))
                ]),
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
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Text("Mega savings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                ],
              ),
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
            Container(
              height: height/2.2,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/intro/Lived.png'),fit: BoxFit.cover),

              ),
            )
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

