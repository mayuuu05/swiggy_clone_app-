import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_app/utils/colors/colors.dart';

class NotificatinScreen extends StatefulWidget {
  const NotificatinScreen({super.key});

  @override
  State<NotificatinScreen> createState() => _NotificatinScreenState();
}

class _NotificatinScreenState extends State<NotificatinScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Get update on your order status ',
                style: GoogleFonts.roboto(
                  fontSize: 29,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Allow push notification to get real-time updates on your order status',
                style: GoogleFonts.roboto(fontSize: 15),
              ),
              Image.asset(
                'assets/images/intro/person.png',
                height: 400,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: height * 0.1 - 30,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: mainColor,
                ),
                child: TextButton(
                  onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.notifications_active,
                                      color: mainColor, size: 30),
                                  SizedBox(height: 20),
                                  Center(
                                      child: Text(
                                    'Allow Swiggy to send you\n          notification?',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(height: 10),
                                  Divider(),
                                  TextButton(
                                    child: Text('Allow'),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/home');
                                      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Notification on!"),duration: Duration(seconds: 1),));
                                    },
                                    style: TextButton.styleFrom(
                                      foregroundColor: mainColor,
                                      minimumSize: Size(double.infinity, 40),
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  TextButton(
                                    child: Text("Don't Allow"),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/home');
                                    },
                                    style: TextButton.styleFrom(
                                      foregroundColor: mainColor,
                                      minimumSize: Size(double.infinity, 40),
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                  child: Text(
                    'Turn on Notification',
                    style: GoogleFonts.roboto(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Text(
                  'Not now ',
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
