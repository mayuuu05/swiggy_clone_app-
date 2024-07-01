import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class successfully extends StatefulWidget {
  const successfully({super.key});

  @override
  State<successfully> createState() => _successfullyState();
}

class _successfullyState extends State<successfully> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Container(
            height: height*0.3,
            width: width*0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/intro/WhatsApp_Image_2024-06-29_at_10.31.16_PM-removebg-preview.png',
                    )
                ),


            ),

          ),
        ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('        Order Successfully',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('Your Order Was Successfully Check \n       your Email for your receipt'),
        )
      ]),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/orDetail');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30),
          height: height*0.080,
          width: width,
          decoration: BoxDecoration(
              color: Color(0xff12D76E),
              borderRadius: BorderRadius.circular(10)

          ),
          child: Text(
            'Check Order Details',style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800
          ),
          ),
        ),
      ),
    );
  }
}