
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_app/utils/colors/colors.dart';

class Addlocation extends StatefulWidget {
  const Addlocation({super.key});

  @override
  State<Addlocation> createState() => _AddlocationState();
}

class _AddlocationState extends State<Addlocation> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text('Enter your area or apartment name',style: TextStyle(
           color: Colors.black,fontWeight: FontWeight.w800,fontSize: 15
         ),),
       ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.065,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      Text('Search for ',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                      Expanded(
                        child: AnimatedTextKit(animatedTexts: [
                          RotateAnimatedText("'Vesu'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                          RotateAnimatedText("'Piplod'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                          RotateAnimatedText("'Yogi chock'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                          RotateAnimatedText("'Dindoli'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),
                          RotateAnimatedText("'Adajan'",duration: Duration(seconds: 1),textStyle: TextStyle(color: Colors.grey),),

                        ],
                          repeatForever: true,
                          pause: Duration(milliseconds: 500),
                        ),
                      ),
                      SizedBox(width: width*0.3,),
                      Icon(Icons.search,color: Colors.grey,),
                      VerticalDivider(
                        thickness: 1.5,
                        color: Colors.grey.shade400,
                        endIndent: 5,
                        indent: 5,
                      ),
                      Icon(Icons.mic,color: mainColor,)

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.01,),

            ListTile(
               leading: Icon(CupertinoIcons.location_fill,color: mainColor,size: 20,),
              title: Text('Use my current location',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                color: mainColor
              ),),
            ),Divider(),
            ListTile(
              leading: Icon(CupertinoIcons.add,color: mainColor,weight: 20,),
              title: Text('Add new address',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: mainColor
              ),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,left: 20,bottom: 8
              ),
              child: Text('SAVED ADDRESS',style: TextStyle(
                letterSpacing: 2,
                wordSpacing: 2,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),),
            ),
            ListTile(
              leading: Icon(Icons.home,),
              title: Text('Home',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,

              ),),
              subtitle: Text('603,Ramipark,Ramipark Society, Royal Start Town',style: TextStyle(
                  fontSize: 11,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
