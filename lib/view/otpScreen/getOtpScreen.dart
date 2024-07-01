import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_app/utils/globals/controller.dart';
import 'package:swiggy_app/utils/globals/globals.dart';

import '../../utils/colors/colors.dart';

class Getotpscreen extends StatefulWidget {
  const Getotpscreen({super.key});

  @override
  State<Getotpscreen> createState() => _GetotpscreenState();
}

class _GetotpscreenState extends State<Getotpscreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text('Verify with OTP sent to ${countryCode.text}',style: GoogleFonts.roboto(
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: -0.3,
                wordSpacing: -0.3,
                fontSize: 25
            ),),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 5,
                right: 5
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height*0.07,
                    width: width*0.1+2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                            {
                              FocusScope.of(context).nextFocus();
                            }
                        },
                        textAlign: TextAlign.center,

                        controller: otp1,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green,width: 2)
                            )
                        ),
                      )),
                  SizedBox(
                      height: height*0.07,
                      width: width*0.1+2,
                      child: TextFormField(

                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        controller: otp2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                          )
                        ),
                      )),
                  SizedBox(
                      height: height*0.07,
                      width: width*0.1+2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        controller: otp3,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green,width: 2)
                            )
                        ),
                      )),
                  SizedBox(
                      height: height*0.07,
                      width: width*0.1+2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        controller: otp4,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green,width: 2)
                            )

                        ),
                      )),
                  SizedBox(

                      height: height*0.07,
                      width: width*0.1+2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        controller: otp5,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green,width: 2)
                            )

                        ),
                      )),
                  SizedBox(
                      height: height*0.07,
                      width: width*0.1+2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if(value.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        controller: otp6,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green,width: 2)
                            )

                        ),
                      )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 25
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.check,color: Colors.white,size: 18,),
                  ),Padding(
                    padding: const EdgeInsets.only(
                      left: 10
                    ),
                    child: Text('OTP found!',style: TextStyle(color: Colors.grey,fontSize: 17,wordSpacing: 1,fontWeight: FontWeight.w500),),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/location');
              },
              child: Container(
                margin: EdgeInsets.only(
                    top: 30
                ),
                height: height*0.1-30,
                width: width*0.9,
                decoration: BoxDecoration(

                    color: mainColor
                ),
                alignment: Alignment.center,
                child:  Text(
                  'Continue',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }


}
