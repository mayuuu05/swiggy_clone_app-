import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('PAYMENT',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
      ),
      body: Column(
        children: [
          Container(
            height: height/16,
            width:width/1,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 17,top: 15),
              child: Text('SAVED CARDS',style: TextStyle(fontSize: 13),),
            ),
          ),
          Container(
            height: height/8,
            width:width/1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      Icon(Icons.add,size: 20,color: Colors.orange,),
                      SizedBox(width: 15,),
                      Text('ADD NEW CARD ',style: TextStyle(fontSize: 18,color: Colors.orange,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12,left: 20),
                  child: Row(
                    children: [
                      Image(image: AssetImage(
                          'assets/images/intro/visa.jpeg',
                      ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height/16,
            width:width/1,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 17,top: 15),
              child: Text('WALLET',style: TextStyle(fontSize: 13),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: height*0.05+10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/intro/phonePay.jpeg'
                        ),
                      )
                  ),
                ),
                SizedBox(width: 7,),
                Text('Phone pay',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('Link Account',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: height*0.05+10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/intro/paytm.jpeg'
                        ),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Text('Paytm',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('Link Account',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: height*0.05+10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/intro/gPay.jpeg'
                        ),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Text('Google Pay',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('Link Account',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: height*0.05+10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/intro/amazon.jpeg'
                        ),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Text('Amazon Pay',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Spacer(),
                Text('Link Account',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}