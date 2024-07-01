import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.8,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Color(0xff3E52B6),
                        Colors.pinkAccent,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Swiggy HDFC Bank Credit Card',
                        style: TextStyle(color: Colors.white70),
                      ),
                     Divider(
                       endIndent: 80,
                       indent: 80,
                     ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'The Best Cashback \n     Card in town!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.04,
                          width: width * 0.8,
                          decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(5)

                            )
                          ),
                          child: Text(
                            'Save up to ₹42000 every year',
                            style: TextStyle(color: Colors.black87, fontSize: 14),
                          ),
                        ),
                      ),

                      Image.asset('assets/images/intro/card.png'),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12,
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:570),
                  height: height ,
                  width: width,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: height*0.4-50,
                         width: width,
                         decoration: BoxDecoration(
                           color: Colors.white,borderRadius: BorderRadius.circular(20)
                         ),
                         child: Column(
                           children: [
                             ListTile(
                               title: Text(
                                 'Flat 10% cashback',
                                 style: TextStyle(fontWeight: FontWeight.bold),
                               ),
                               subtitle: Text(
                                 'On Food, Instamart, Dineout',
                                 style: TextStyle(color: Colors.grey),
                               ),
                               trailing: Icon(CupertinoIcons.chevron_down),
                             ),
                             ListTile(
                               title: Text(
                                 'Flat 5% cashback',
                                 style: TextStyle(fontWeight: FontWeight.bold),
                               ),
                               subtitle: Text(
                                 'On 1000+ Online shopping apps',
                                 style: TextStyle(color: Colors.grey),
                               ),
                               trailing: Icon(CupertinoIcons.chevron_down),
                             ),
                             ListTile(
                               title: Text(
                                 'FREE 3 month Swiggy One',
                                 style: TextStyle(fontWeight: FontWeight.bold),
                               ),
                               subtitle: Text(
                                 'Welcome benefit redeemable upon card activation',
                                 style: TextStyle(color: Colors.grey),
                               ),
                               trailing: Icon(CupertinoIcons.chevron_down),
                             ),
                             Text(
                               'Know More >',
                               style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                       ),
                     ),

                      Container(
                        width: width,
                          child: Image.asset('assets/images/intro/cashBan.png',fit: BoxFit.cover,)),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Bonus Benefits',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),),
                      ),
                      Container(
                        height: height*0.2-30,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image:DecorationImage(
                              opacity: 0.1,
                              image: AssetImage('assets/images/intro/bann2.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          // child: Image.asset('assets/images/intro/bann2.jpg',fit: BoxFit.cover,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('See all Master Cards benefits >',style: TextStyle(color: mainColor,fontWeight: FontWeight.w900),),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/apply');
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: height*0.08,
                          width: width*0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mainColor
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 9
                                ),
                                child: Text(
                                  'Apply Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Only takes a few minutes',
                                style: TextStyle(color: Colors.white70,fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [

      //     Container(
      //       height: height * 0.08,
      //       width: width * 0.9,
      //       decoration: BoxDecoration(
      //         color: Colors.orange.shade800,
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       alignment: Alignment.center,

      //     ),
      //   ],
      // ),
    );
  }
}