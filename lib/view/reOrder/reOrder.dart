import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reorder extends StatefulWidget {
  const reorder({super.key});

  @override
  State<reorder> createState() => _reorderState();
}

class _reorderState extends State<reorder> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
            child: Icon(CupertinoIcons.back)),
        title: Text('REORDER',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w900),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/intro/reorder.png'),
          SizedBox(height: height*0.01,),
          Text("     Uh Oh! You don't have any food orders",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          Text('Order now to avail great discount! '),
          SizedBox(height: height*0.02,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              alignment: Alignment.center,
              height: height*0.05,
              width:width*0.3,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
              child: Text('Order Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
            ),
          )

        ],
      ),
    );
  }
}