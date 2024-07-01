import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/getstarted.dart';
import 'components/row.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

@override
class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/intro/bg.jpg',
              fit: BoxFit.cover,
              height: 900,
              opacity: const AlwaysStoppedAnimation(.2)),
          introDetail(height, width)
        ],
      ),
    ));
  }
  Padding introDetail(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Image.asset('assets/images/intro/intro.png',height: 70,  opacity: const AlwaysStoppedAnimation(.4)),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 5,
                left: 12
            ),
            child: Text('Swiggy',style: GoogleFonts.roboto(
                color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w900
            ),),
          ),
          SizedBox(
            height: height*0.02,
          ),
          row(),
          SizedBox(
            height: height*0.01,
          ),
          const Divider(
            color: Colors.white70,
            thickness: 0.5,
            endIndent: 3,
            indent: 2,
          ),
          SizedBox(
            height: height*0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Order from top restaurants',style: GoogleFonts.roboto(
                color: Colors.white70,fontSize: 22,
                wordSpacing: 2,
                letterSpacing: 1
            ),),
          ),
          SizedBox(
            height: height*0.02,
          ),
          getStarted(context, height, width)
        ],
      ),
    );
  }
}
