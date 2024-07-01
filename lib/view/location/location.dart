import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../utils/colors/colors.dart';
class Locationpage extends StatefulWidget {
  const Locationpage({super.key});

  @override
  State<Locationpage> createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What's your location?",
                    style: GoogleFonts.roboto(fontSize: 27, fontWeight: FontWeight.w900),),
                  SizedBox(height: height*0.02,),
                  Text("We need your location to show available restaurants & product ",
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: Colors.black54, letterSpacing: 1),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20
              ),
              height: height / 1.7,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                image: DecorationImage(image: AssetImage('assets/images/intro/loc.jpg'),fit: BoxFit.cover),
              ),
            ),
            InkWell(

              onTap: () {
                _showLocationDialog(context,height,width);
              },
              child: Container(
                margin: EdgeInsets.all(5),
                height: height / 14,
                width: width / 1.1,
                decoration: BoxDecoration(
                  color: mainColor,
                ),
                child: Center(
                  child: Text("Allow location access", style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),),
                ),
              ),
            ),
            TextButton(onPressed: () {
              Navigator.of(context).pushNamed('/addLocation');
            },
              child: Text("Enter location Manually", style: GoogleFonts.roboto(
                  color: mainColor,
                  fontSize: 16,
                  letterSpacing: 0.5,
                  wordSpacing: 1,
                  fontWeight: FontWeight.w700),),)
          ],
        ),
      ),
    );
  }
}
void _showLocationDialog(BuildContext context,double height,double width) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.blue, size: 30),
              SizedBox(height: height*0.02),
              Center(
                child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                            text: 'Allow ',
                            style: GoogleFonts.roboto(
                                fontSize: 17
                            ),
                          ),
                          TextSpan(
                            text: 'Swiggy ' ,
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(
                            text: "to access this \n         device's location?",
                            style: GoogleFonts.roboto(
                                fontSize: 17
                            ),
                          ),
                        ]
                    )
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.shield, color: Colors.black45),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "This app stated it may share location data with third parties",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black45, size: 16),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                     Image.asset('assets/images/intro/l1.png',height: 120,),
                      Text('Precise',style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/intro/l2.png',height: 120,),
                      Text('Approximate',style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                child: Text('While using the app'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/notification');
                  // Handle "While using the app" logic here
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue, minimumSize: Size(double.infinity, 40),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                child: Text('Only this time'),
                onPressed: () {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'For a better experience ,turn \non device location,which uses \nGoogle location service ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'No Thanks',
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/notification');
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const  SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  );
                  // Handle "Only this time" logic here
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue, minimumSize: Size(double.infinity, 40),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                child: Text("Don't allow"),
                onPressed: () {
                  Navigator.of(context).pushNamed('/notification');
                  // Handle "Don't allow" logic here
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue, minimumSize: Size(double.infinity, 40),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),

      );
    },
  );
}



