import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:swiggy_app/view/otpScreen/componets/text.dart';


import '../../utils/colors/colors.dart';
import '../../utils/globals/controller.dart';
import '../../utils/globals/globals.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
GlobalKey<FormState>Forkey = GlobalKey();
String phoneNumber = '';
class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {

          Navigator.of(context).pop();


        }, icon: Icon(Icons.arrow_back,color: Colors.black,))
      ),
      body: Form(
        key: Forkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Enter your mobile number to get OTP',style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                letterSpacing: -0.3,
                wordSpacing: -0.3,
                fontSize: 30
              ),),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20
              ),
              child: IntlPhoneField(
                onChanged: (phone) {
                  setState(() {
                    phoneNumber = phone.completeNumber;
                  });
                },
                validator: (phone) {
                  if (phoneNumber.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
                initialCountryCode: 'IN',
                controller: countryCode,
                cursorColor: mainColor,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                          width: 1.5,
                          color: mainColor
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: mainColor,
                      )
                  ),

                  labelText: 'Mobile number',
                  labelStyle: GoogleFonts.roboto(
                      color: mainColor
                  ),
                  hintText:'10 digit Mobile Number',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey.shade400
                  ),

                ),
              ),
            ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/getOtp');

              showTopSnakBar(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: 20
              ),
              height: height*0.1-30,
              width: width*0.9,
              decoration: BoxDecoration(

                  color: mainColor
              ),
              alignment: Alignment.center,
              child:  Text(
                'Get OTP',
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
          ),
             SizedBox(height: height*0.03,),
             buildText()
            ],
          ),
        ),
      ),
    ));
  }

  void showTopSnakBar(BuildContext context) => Flushbar(
     backgroundColor: Colors.grey.shade800,
      title: 'OTP 260038',

      message: 'Use OTP 260038 to log into your Swiggy account. Do not share the OTP or your number with anyone including Swiggy personnel. ASkSzFWMk3x',
      duration :Duration(seconds: 3),borderRadius: BorderRadius.circular(15),margin: EdgeInsets.fromLTRB(9, 1 , 8, 9),
      flushbarPosition: FlushbarPosition.TOP,
    icon: Icon(
      Icons.message_sharp,
      color: Colors.white,
    ),
  )..show(context);
}
