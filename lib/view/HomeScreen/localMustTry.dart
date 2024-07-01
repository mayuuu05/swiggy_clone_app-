import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';
import '../../utils/globals/global_variables.dart';
import '../../utils/globals/listOfFood.dart';
import '../../utils/globals/offerList.dart';
import '../../utils/model/billModel.dart';


class LocalMustTry extends StatefulWidget {
  const LocalMustTry({super.key});

  @override
  State<LocalMustTry> createState() => _LocalMustTryState();
}

int disc = 0;
int change() {
  return (DateTime.now().second % discount.length);
}

class _LocalMustTryState extends State<LocalMustTry> {
  int change() {
    if (disc == 3) {
      disc = 0;
    } else {
      disc++;
    }
    return disc;
  }
  int _currentIndex = 0;
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
              height: height * 0.370,
              width: double.infinity,
              decoration: BoxDecoration(

                color: Color(0xFFE0E1E9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.016,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(Icons.arrow_back,color: Colors.black,))),

                        IconButton(onPressed: () {}, icon: Icon(Icons.share,color: Colors.black,)),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.230,
                    width: width * 0.850,
                    padding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade900,
                            blurRadius: 7,
                            spreadRadius: 0.1)
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 7
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '🏆 Best in food',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade900,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  '⭐ ${offer[selected]['rate']}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 7
                              ),
                              child: Text(
                                "${offer[selected]['add']}",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8
                              ),
                              child: Text(
                                '1k+ ratings',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          '${(selected==3||selected==5)?"20-30 min ":offer[selected]['duration']} | Udhana Gam',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: height * 0.008,
                        ),
                        Divider(),
                        SizedBox(
                          height: height * 0.003,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.directions_bike_outlined,
                              size: 20,
                            ),
                            Text('  4.4 km |  '),
                            Text(
                              '21',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              '  Free Delivery on your order',
                              style: TextStyle(color: Colors.grey.shade700,overflow: TextOverflow.ellipsis,fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  )





          ],
              ),
            ),



            SizedBox(
              height: height * 0.030,
            ),
            Container(
              height: height * 0.0800,
              width: width * 0.930,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        mainColor.withOpacity(0.3),
                        Colors.white,
                      ]
                  ),
                  // border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    height: height * 0.070,
                    width: width * 0.835,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: height * 0.060,
                        autoPlay: true,
                        initialPage: _currentIndex,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: discount.map((i) {
                        return Builder(
                            builder: (context) => Row(
                              children: [
                                Container(
                                  height: height*0.9+40,
                                  width: width*0.09,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset(discount[change()]['img'],),
                                ),
                                SizedBox(
                                  width: width * 0.040,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      discount[change()]['disc'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      discount[change()]['info'],
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.030,
                                ),
                              ],
                            ));
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: width*0.02,
                  ),
                  Text(
                    ' ${_currentIndex + 1}/${discount.length}',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.04,
            ),


            Row(
              children: [
                Container(
                  height: height * 0.040,
                  width: width * 0.300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                    Border.all(color: Colors.grey.shade400, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Pure Veg',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: height * 0.040,
                  width: width * 0.300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                    Border.all(color: Colors.grey.shade400, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Ratings 4.0+',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: height * 0.040,
                  width: width * 0.300,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                    Border.all(color: Colors.grey.shade400, width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Bestseller',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height:
              height*0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '   Reccomand (20)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height:
              height*0.03,
            ),
            ...List.generate(
              listOfFood.length,
                  (index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bestseller ',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        Container(
                          // height: height * 0.1,
                          width: width * 0.5,
                          color: Colors.white,
                          child: Text(
                            ' ${(listNo == 0) ? listOfFood[selected][index]['name'] : foodList[selected][index]['name']}',
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          ' ₹${(listNo == 0) ? listOfFood[selected][index]['price'] : foodList[selected][index]['price']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.green.shade900,
                              size: 18,
                            ),
                            Text(
                              ' ${(listNo == 0) ? listOfFood[selected][index]['rate'] : foodList[selected][index]['rate']}',
                              style: TextStyle(
                                  color: Colors.green.shade900, fontSize: 17),
                            ),
                            Text(
                              ' (${(listNo == 0) ? listOfFood[selected][index]['order'] : foodList[selected][index]['order']})',
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15),
                            ),
                          ],
                        ),
                        Container(
                          height: height * 0.1,
                          width: width * 0.5,
                          color: Colors.white,
                          child: Text(
                            '${(listNo == 0) ? listOfFood[selected][index]['description'] : foodList[selected][index]['description']}',
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.grey.shade800, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {});
                                showModalBottomSheet(

                                    backgroundColor: Colors.white,
                                    context: context,
                                    builder: (context) => Column(
                                      children: [
                                        Container(
                                          height: height*0.250,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('${(listNo == 0) ? listOfFood[selected][index]['img'] : foodList[selected][index]['img']}'),fit: BoxFit.cover),
                                            color: Colors.white,
                                            borderRadius:

                                            BorderRadius.only(
                                                topLeft: Radius
                                                    .circular(30),
                                                topRight:
                                                Radius.circular(
                                                    30)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Bestseller',style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500),),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    '${(listNo == 0) ? listOfFood[selected][index]['name'] : foodList[selected][index]['name']}',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){
                                                      listofBill.add(billModel(product: (listNo == 0) ?listOfFood[selected][index]['name'] : foodList[selected][index]['name'], price: (listNo == 0) ?listOfFood[selected][index]['price'] : foodList[selected][index]['price'], quantity: 1));

                                                      Navigator.of(context).pushNamed('/cart');
                                                    },
                                                    child: Container(
                                                        alignment:
                                                        Alignment.center,
                                                        height: height*0.040,
                                                        width: width*0.240,
                                                        decoration:
                                                        BoxDecoration(
                                                            boxShadow: [BoxShadow(color: Colors.black54,blurRadius: 5,spreadRadius: 2)],
                                                            border: Border.all(
                                                                color: Colors
                                                                    .grey,
                                                                width: 1.5),
                                                            borderRadius:
                                                            BorderRadius
                                                                .all(
                                                              Radius
                                                                  .circular(
                                                                10,
                                                              ),
                                                            ),
                                                            color: Colors
                                                                .white),
                                                        child: Text(
                                                          'ADD',
                                                          style: TextStyle(
                                                              color:
                                                              Colors.green,fontWeight: FontWeight.bold,fontSize: 18),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                '₹${(listNo == 0) ? listOfFood[selected][index]['price'] : foodList[selected][index]['price']}',
                                                style:
                                                TextStyle(fontSize: 20,color: Colors.grey.shade800,fontWeight: FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,color: Colors.green,size: 18,),
                                                  Text(
                                                    '${(listNo == 0) ? listOfFood[selected][index]['rate'] : foodList[selected][index]['rate']}',
                                                    style: TextStyle(
                                                        fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),
                                                  ),
                                                  Text(
                                                    ' (${(listNo == 0) ? listOfFood[selected][index]['order'] : foodList[selected][index]['order']})',
                                                    style: TextStyle(
                                                        color:
                                                        Colors.grey.shade700),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: height*0.020,),
                                              Container(
                                                height: height * 0.120,
                                                width: width * 0.900,
                                                color: Colors.white,
                                                child: Text(
                                                  '${(listNo == 0) ? listOfFood[selected][index]['description'] : foodList[selected][index]['description']} [Fat-5 per 100 g, protein-10.1 per 100 g, Carbohydrate-50.2 per 100 g, Sugar-6 per 100 g, Calories-286.2 k.cal]Nutritional information per 100g',
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.grey.shade800, fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ));
                              },
                              child: Container(
                                height: height * 0.170,
                                width: width * 0.350,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(image: AssetImage('${(listNo == 0) ? listOfFood[selected][index]['img'] : foodList[selected][index]['img']}'),fit: BoxFit.cover,opacity: 0.8),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 120, left: 30),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (context) => Column(
                                        children: [
                                          Container(
                                            height: height*0.250,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('${(listNo == 0) ? listOfFood[selected][index]['img'] : foodList[selected][index]['img']}'),fit: BoxFit.cover),
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.only(
                                                  topLeft: Radius
                                                      .circular(10),
                                                  topRight:
                                                  Radius.circular(
                                                      10)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Bestseller',style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500),),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      '${(listNo == 0) ? listOfFood[selected][index]['name'] : foodList[selected][index]['name']}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    GestureDetector(
                                                      onTap: (){
                                                        listofBill.add(billModel(product: (listNo == 0) ?listOfFood[selected][index]['name'] : foodList[selected][index]['name'], price: (listNo == 0) ?listOfFood[selected][index]['price'] : foodList[selected][index]['price'], quantity: 1));

                                                        Navigator.of(context).pushNamed('/cart');
                                                      },
                                                      child: Container(
                                                          alignment:
                                                          Alignment.center,
                                                          height: height*0.040,
                                                          width: width*0.240,
                                                          decoration:
                                                          BoxDecoration(
                                                              boxShadow: [BoxShadow(color: Colors.black54,blurRadius: 5,spreadRadius: 2)],
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey,
                                                                  width: 1.5),
                                                              borderRadius:
                                                              BorderRadius
                                                                  .all(
                                                                Radius
                                                                    .circular(
                                                                  10,
                                                                ),
                                                              ),
                                                              color: Colors
                                                                  .white),
                                                          child: Text(
                                                            'ADD',
                                                            style: TextStyle(
                                                                color:
                                                                Colors.green,fontWeight: FontWeight.bold,fontSize: 18),
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  '₹${(listNo == 0) ? listOfFood[selected][index]['price'] : foodList[selected][index]['price']}',
                                                  style:
                                                  TextStyle(fontSize: 20,color: Colors.grey.shade800,fontWeight: FontWeight.bold),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,color: Colors.green,size: 18,),
                                                    Text(
                                                      '${(listNo == 0) ? listOfFood[selected][index]['rate'] : foodList[selected][index]['rate']}',
                                                      style: TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),
                                                    ),
                                                    Text(
                                                      ' (${(listNo == 0) ? listOfFood[selected][index]['order'] : foodList[selected][index]['order']})',
                                                      style: TextStyle(
                                                          color:
                                                          Colors.grey.shade700),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: height*0.020,),
                                                Container(
                                                  height: height * 0.120,
                                                  width: width * 0.900,
                                                  color: Colors.white,
                                                  child: Text(
                                                    '${(listNo == 0) ? listOfFood[selected][index]['description'] : foodList[selected][index]['description']} [Fat-5 per 100 g, protein-10.1 per 100 g, Carbohydrate-50.2 per 100 g, Sugar-6 per 100 g, Calories-286.2 k.cal]Nutritional information per 100g',
                                                    overflow: TextOverflow.fade,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Colors.grey.shade800, fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ));
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                        color: Colors.white),
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

List name = [

  {'name': '15% off','img': 'assets/images/allFood/dhokla4.jpg'},
  {'name': '20% off','img': 'assets/images/allFood/kachori1.jpeg'},
  {'name': 'Pure Vag','img': 'assets/images/allFood/burger7.jpeg'},
  {
    'name': 'Pure Vag',
    'img': 'assets/images/allFood/paratha_1.jpg'
  },
  {'name': 'Rating 4.0+','img': 'assets/images/allFood/pizza3.jpeg'
  },
  {'name': '40% off','img': 'assets/images/allFood/burger1.jpeg'},
  {'name': 'Bestsell','img': 'assets/images/allFood/kachori1.jpeg'}, {'name': 'Pure Vag','img': 'assets/images/allFood/burger3.jpeg'},
];
List name1 = [

  {'name': '15% off','img': 'assets/images/allFood/dhokla4.jpg'},
  {'name': '20% off','img': 'assets/images/allFood/kachori1.jpeg'},
  {'name': 'Pure Veg','img': 'assets/images/allFood/burger7.jpeg'},
  {
    'name': 'Pure Veg',
    'img': 'assets/images/allFood/paratha_1.jpg'
  },
  {'name': 'Rating 4.0+','img': 'assets/images/allFood/pizza3.jpeg'
  },
  {'name': '40% off','img': 'assets/images/allFood/burger1.jpeg'},
  {'name': 'Bestsell','img': 'assets/images/allFood/kachori1.jpeg'},
  {'name': 'Pure Vag','img': 'assets/images/allFood/burger3.jpeg'},

];

List discount = [
  {'disc': 'Items at ₹199', 'info': 'ON SELECT ITEM |', 'img': 'assets/images/intro/off.png'},
  {
    'disc': '50% off upto ₹80',
    'info': 'USE SWIGGY50 | ABOVE ₹149',
    'img': 'assets/images/intro/off.png'
  },
  {
    'disc': '30% off upto ₹75',
    'info': 'USE STEALDEAL | ABOVE ₹179',
    'img': 'assets/images/intro/off.png'
  },
  {
    'disc': 'Flat ₹50 off',
    'info': 'NO CODE REQUIRED | ABOVE ₹600',
    'img': 'assets/images/intro/off.png'
  },
];