import 'package:flutter/material.dart';
import 'package:swiggy_app/utils/colors/colors.dart';

import '../../utils/globals/globals.dart';


class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('Address',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.07,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffF4F4F4)
            ),
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(' SAVED ADDRESS '),
            ),
          ),
          Container(
            height: height*0.3,
            width: double.infinity,
            decoration: BoxDecoration(
            ),
            child: Column(
              children: [
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text(
                        textAlign: TextAlign.left,
                        'Phone Number : +91${countryCode.text}',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
                SizedBox(height: height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    }, child: Text('EDIT',style: TextStyle(color: mainColor,fontWeight: FontWeight.w500,fontSize: 15),)),
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text('DELETE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:mainColor),)),
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text('SHARE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.
                        w500,color: mainColor),)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: height*0.05,
                    width: width,
                    decoration: BoxDecoration(

                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    alignment: Alignment.center,
                    child: Text('ADD NEW ADDRESS',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}