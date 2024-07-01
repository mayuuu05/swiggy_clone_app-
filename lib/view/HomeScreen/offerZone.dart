
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/globals/global_variables.dart';
import '../../utils/globals/imageList.dart';
import '../../utils/globals/offerList.dart';

class OfferZonePage extends StatefulWidget {
  const OfferZonePage({super.key});

  @override
  State<OfferZonePage> createState() => _OfferZonePageState();
}

class _OfferZonePageState extends State<OfferZonePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: BezierClipper(),
              child: Container(
                height: height/2.9 ,
                decoration: BoxDecoration(
                  color: Color(0xff6e00dd),
                  image: DecorationImage(image: AssetImage("assets/images/intro/offerZone.png"),scale: 2),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
                            Navigator.of(context).pop();
                          }, icon:Icon(CupertinoIcons.chevron_left,size: 20,color: Colors.white,),),
                          IconButton(onPressed: () {

                          }, icon:Icon(CupertinoIcons.search,size: 20,color: Colors.white,),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  Text("Top offer for you",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ...List.generate(
                      offer.length,
                          (index) => Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      opacity: 0.7,
                                      fit: BoxFit.cover,
                                      image: AssetImage(offer[index]['img']!),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(top: 65, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          offer[index]['name']!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          offer[index]['off']!,
                                          style: TextStyle(
                                              color: Colors.grey.shade400),
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
                              Text(offer[index]['foodname']!),
                              Text(
                                offer[index]['duration']!,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10),
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
           GestureDetector(
             onTap: () {
               Navigator.of(context).pushNamed('/card');
             },
               child: Image.asset('assets/images/intro/extra.png')),
            Padding(
              padding: const EdgeInsets.only(top: 15,
              left: 20,right: 8),
              child: Row(
                children: [
                  Text("Most loved deals on Swiggy",style: TextStyle(color: Colors.black26,fontSize: 25,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTapped1 = !isTapped1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, top: 18),
                    height: height / 25,
                    width: width / 3.0,
                    decoration: BoxDecoration(
                      color: isTapped1 ? Colors.black : Colors.white,
                      border: Border.all(
                        color: Colors.black38,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Min 50% off",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: isTapped1 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTapped2 = !isTapped2;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, top: 18),
                    height: height / 25,
                    width: width / 3.0,
                    decoration: BoxDecoration(
                      color: isTapped2 ? Colors.black : Colors.white,
                      border: Border.all(
                        color: Colors.black38,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Min 100% off",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: isTapped2 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Wrap(
                children: List.generate(MostLovedDeal.length, (index) => Column(
                  children: [
                    Container(
                      height: height/7.3,
                      width: width/3.7,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(offer[index]['img']!),
                        ),
                      ),
                    ),
                  ],
                ),),
              ),
            ),
            SizedBox(height: height*0.02,),
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
                    Text('See more',style: TextStyle(
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
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Row(
                children: [

                  Text("Tasty Treats, Save up to 60%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
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
                            imagelist4.length,
                                (index) => Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: height/12,
                                  width: width/6,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(

                                          imagelist4[index]['image']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  imagelist4[index]['foodName'],
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
                      Row(
                        children: [
                          ...List.generate(
                            imagelist3.length,
                                (index) => Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: height/12,
                                  width: width/5.8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          imagelist3[index]['image']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(imagelist3[index]['foodName'],
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
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 10),
              child: Row(
                children: [
                  Text("Mega savings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
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

          ],
        ),
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    double x = -100;
    double y = size.height -25;
    double yControlPoint = size.height + .88;
    double increment = size.width / 8;

    while (x < size.width) {
      path.quadraticBezierTo(
          x + increment / 2, yControlPoint, x + increment, y);
      x += increment;
    }

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }
}
List restaurant = [
  {
    'add': 'Punjabi, North Indian, Paratha',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assest/images/offer/thepla.jpg',
    'foodname': 'Jassi De Parathe',
    'duration': '35-45 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Pizza, Desserts, Beverages',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assest/images/offer/pizza.jpg',
    'foodname': 'Pizza Castele',
    'duration': '20-30 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Bihari, Fast Food',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assest/images/offer/paratha.jpeg',
    'foodname': 'Riya Ka Kitchen',
    'duration': '20-30 mins',
  },
  {
    'add': 'Chinese',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assest/images/offer/chinese.jpeg',
    'foodname': 'Chinese',
    'duration': '25-35 mins',
  },
  {
    'add': 'Biryani',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assest/images/offer/biryani.jpeg',
    'foodname': 'Tawakal Biryani \n   Center',
    'duration': '20-30 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Dindoli - 1.6 km',
    'name': '44% OFF',
    'off': 'ABOVE ₹119',
    'rate': '2.5k (20)',
    'img': 'assest/images/offer/bhature.jpg',
    'foodname': 'Punjabi Dhaba',
    'duration': '40-50 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Cakes and Pastries, Bakery',
    'name': '21% OFF',
    'img': 'assest/images/offer/cake.jpeg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Sainath Live Cake',
    'duration': '15-20 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assest/images/offer/role.jpeg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Madina Hotel',
    'duration': '40-45 mins',
  },
];
List MostLovedDeal=[1,2,3,4,5,6];

