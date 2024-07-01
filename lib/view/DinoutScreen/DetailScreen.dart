import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../utils/globals/featureList.dart';
import '../../utils/globals/global_variables.dart';
import '../../utils/globals/hotelList.dart';
import 'marqury.dart';


class offerpage extends StatefulWidget {
  const offerpage({super.key});

  @override
  State<offerpage> createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ...List.generate(
                  featureList.length,
                      (index) => Marquee(
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Container(
                          height: height * 0.4,
                          width: width * 0.9 + 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20),),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${featureList[selectedIndex]['img2']}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white12,
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: height * 0.220,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'OPEN TILL 11PM                              ',
                                style: TextStyle(
                                    color: Colors.grey.shade800, fontSize: 13),
                              ),
                              Icon(
                                CupertinoIcons.arrow_up_square,
                                color: Colors.grey.shade800,
                                size: 20,
                              ),
                              SizedBox(
                                width: width*0.02,
                              ),
                              Icon(
                                CupertinoIcons.heart,
                                color: Colors.grey.shade800,
                                size: 20,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(
                            dineOutHotelDetailList[selectedIndex]['name'],
                            style: TextStyle(
                                fontSize: height*0.025,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            dineOutHotelDetailList[selectedIndex]['location'],
                            style: TextStyle(
                              fontSize: height*0.016,
                              color: Colors.black,
                            ),
                          ),

                          Text(
                            featureList[selectedIndex]['area'],
                            style: TextStyle(
                              fontSize: height*0.019,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Text(
                                '  4.5',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                '  647 Google ratings',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 30,),
                              Text(dineOutHotelDetailList[selectedIndex]['price'],
                                  style: TextStyle(
                                      fontSize: height*0.018,
                                      fontWeight: FontWeight.w800)),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '  Pre-book offer   ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.yellow,
                              Colors.orange.shade900,
                            ]),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'ONE EXCLUSIVE',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: height * 0.080,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text(
                      '        Flat 20% Off on Total Bill                       ',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            Text(
              '       Coupouns & Addional offer as applicable during bill payment',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '    Walk-in offers',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            Text(
              '      Also applicable on table booking ',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10),
                height: height * 0.100-6,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/intro/logo.png',height: 60,),
                      Column(
                        children: [
                          SizedBox(height: height*0.01,),
                          Text('10% off upto ₹150',style: TextStyle(
                                              color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                                          ),),
                          Text(
                            'USE DINE150 | ABOVE ₹100',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),



            SizedBox(
              height: height*0.02,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Divider(
            //     height: 2,
            //   ),
            // ),
            Text(
              '     Location & timing',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    '   D-603 Abhinav Heights,Ramipark,Royal Star\n   dindoli,Surat - 394210....',
                    style: TextStyle(color: Colors.grey.shade700,fontSize: 13),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                height: 2,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'See weekly timing  call resturant',
                  style: TextStyle(
                      color: Colors.orange.shade700,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                height: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '     Features',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            Text(
              '       Parking available                   SwiggyPay accepted',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            SizedBox(
              height: height*0.3,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 30),
        height: height * 0.070,
        width: width,
        decoration: BoxDecoration(
            color: Colors.orange.shade900,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'LOGIN TO GET OFFER',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

List discount = [
  {'disc': 'Items at ₹199', 'info': 'ON SELECT ITEM |', 'logo': '%'},
  {
    'disc': '50% off upto ₹100',
    'info': 'USE SWIGGY50 | ABOVE ₹149',
    'logo': '%'
  },
  {
    'disc': '30% off upto ₹75',
    'info': 'USE STEALDEAL | ABOVE ₹179',
    'logo': '%'
  },
  {'disc': 'Flat ₹50 off', 'info': 'NO CODE REQUIRED | ABOVE ₹600', 'logo': '%'}
];