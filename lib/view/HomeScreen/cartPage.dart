import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


import '../../utils/colors/colors.dart';
import '../../utils/model/billModel.dart';

class addcard extends StatefulWidget {
  const addcard({super.key});

  @override
  State<addcard> createState() => _addcardState();
}

class _addcardState extends State<addcard> {

  int itemTotal()
  {
    total=0;
    for(int i=0;i<listofBill.length;i++)
    {
      total=total+(listofBill[i].price!*listofBill[i].quantity);
    }
    return total;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(CupertinoIcons.arrow_left),),
        title: Text('My Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.130,
                      width: width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.orange.shade100,
                              ]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.deepOrange,
                                ),
                                Text(
                                  ' 40-50 mins to Home',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  ' |',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  ' 603,ramipar...   ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Text(
                              '        Riding Safely in rains! Delivery Time updated',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.orange.shade500),
                            ),
                            Text('        Sit back and relax your order is in safe..',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.orange.shade500))
                          ],
                        ),
                      ),
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(14)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  ...List.generate(listofBill.length, (index) => SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: height*0.030,
                                              margin: EdgeInsets.only(left: 10,right: 20),
                                              width: width*0.350,color: Color(0xFFF6F6F7),
                                              child: Text('${listofBill[index].product}',style: TextStyle(overflow: TextOverflow.ellipsis),),),

                                          ],
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: height * 0.04,
                                          width: width * 0.33,
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              border:
                                              Border.all(width: 1, color: Colors.grey)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              IconButton(onPressed: (){
                                                if(listofBill[index].quantity>1)
                                                {
                                                  setState(() {
                                                    listofBill[index].quantity--;
                                                  });
                                                }
                                              }, icon: Icon(
                                                Icons.remove,
                                                size: 16,
                                                color: Colors.green.shade900,
                                              ),),
                                              Text(
                                                ' ${listofBill[index].quantity} ',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.green.shade900),
                                              ),
                                              IconButton(onPressed: (){
                                                setState(() {
                                                  listofBill[index].quantity++;
                                                });
                                              }, icon: Icon(CupertinoIcons.add,
                                                  size: 16, color: Colors.green.shade900),),
                                            ],
                                          ),
                                        ),
                                        Text('     ₹${listofBill[index].price!*listofBill[index].quantity}'),
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              listofBill.removeAt(index);
                                            });
                                          },
                                          child: Container(margin: EdgeInsets.only(
                                            bottom: 10,
                                            left: 10
                                          ),
                                              height: height*0.040,
                                              width: width*0.200,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade300,
                                                borderRadius: BorderRadius.circular(9)
                                              ),

                                              child: Icon(Icons.delete,color: Colors.red,size: 19,)),
                                        ),
                                      ],
                                    ),
                                  ),),
                                  SizedBox(
                                    height: height*0.01,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey.shade300,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Add more items                    '),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pushNamed('/home');
                                          },
                                          child: Icon(
                                            CupertinoIcons.add_circled,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey.shade300,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Add more requesten                 '),
                                        Icon(
                                          CupertinoIcons.add_circled,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        children: [
                          Text(
                            '  Offer  & Benefit',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.200,
                        width: width * width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('       SWIGGY50'),
                                      Text(
                                        '       Save another ₹84 on this order',
                                        style:
                                        TextStyle(fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '         Apply',
                                    style: TextStyle(color: Colors.orange.shade900),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height*0.02
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                  height: height*0.02
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/card');
                                },
                                child: Text(
                                  'View more coupons >',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 140),
                      child: Text(
                        'Beat the Heat with a tip !',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.250,
                        width: width * width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '   Despite the heatwave,our delivery',
                                        style: TextStyle(color: Colors.grey.shade800),
                                      ),
                                      Text('   heroes keep moving to serve you.',
                                          style:
                                          TextStyle(color: Colors.grey.shade800)),
                                      Text('   Thank them with a tip',
                                          style:
                                          TextStyle(color: Colors.grey.shade800)),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/pizzas/deli.jpeg'
                                            )
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                        border:
                                        Border.all(width: 0.5, color: Colors.grey)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            '₹20'
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Column(
                                          children: [
                                            Text(
                                                '₹30'
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 3),
                                              alignment: Alignment.center,
                                              height: height*0.02,
                                              width: width * 0.20,
                                              decoration: BoxDecoration(color: Colors.orange.shade900,borderRadius: BorderRadius.only(topRight: Radius.circular(5 ),topLeft: Radius.circular(5))),

                                              child: Text('Most Tipped',style: TextStyle(color: Colors.white,fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            '₹50'
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            'Other'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text(
                        'Delivery Instuctions',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(add.length, (index) => Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            height: height*0.130,
                            width: width*0.300,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(add[index]['icon']),
                                Text(add[index]['text']),
                              ],
                            ),
                          ))
                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text(
                        'Bill Details',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.250,
                        width: width * width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '   Despite the heatwave,our delivery',
                                        style: TextStyle(color: Colors.grey.shade800),
                                      ),
                                      Text('   heroes keep moving to serve you.',
                                          style:
                                          TextStyle(color: Colors.grey.shade800)),
                                      Text('   Thank them with a tip',
                                          style:
                                          TextStyle(color: Colors.grey.shade800)),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/pizzas/deli.jpeg'
                                            )
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                        border:
                                        Border.all(width: 0.5, color: Colors.grey)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            '₹20'
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Column(
                                          children: [
                                            Text(
                                                '₹30'
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 3),
                                              alignment: Alignment.center,
                                              height: height*0.02,
                                              width: width * 0.20,
                                              decoration: BoxDecoration(color: Colors.orange.shade900,borderRadius: BorderRadius.only(topRight: Radius.circular(5 ),topLeft: Radius.circular(5))),

                                              child: Text('Most Tipped',style: TextStyle(color: Colors.white,fontSize: 10),),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            '₹50'
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(width: 0.5, color: Colors.grey)),
                                        child: Text(
                                            'Other'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.480,
                        width: width * width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' Item Total',style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),),
                                    Text(
                                      '₹${itemTotal()}',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' Delivery Fee |9.9kms',style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),),
                                    Text(
                                      '₹${total*3/100}',
                                      style: TextStyle(color: Colors.grey.shade700,decoration: TextDecoration.lineThrough),
                                    )
                                  ],
                                ),
                              ),
                              Text('   FREE Delivery on your order!',style: TextStyle(fontSize: 14,color: Colors.grey),),
                              Divider(thickness: 1,color: Colors.grey.shade300,),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' Delivery Tip ',style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),),
                                    Text(
                                      'Add tip ',
                                      style: TextStyle(color: Colors.orange.shade900),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' Platform fee ',style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),),

                                    Text(
                                      '₹${total*2/100} ',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' GST ',style: TextStyle(
                                        color: Colors.grey.shade700
                                    ),),

                                    Text(
                                      '₹${total*10/100} ',
                                      style: TextStyle(color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,color: Colors.grey.shade300,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(' Total Payment',style: TextStyle(
                                        color: Colors.black,fontSize: 20
                                    ),),

                                    Text(
                                      '₹${total+(total*2/100)+(total*10/100)} ',
                                      style: TextStyle(color: Colors.black,fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Review your order and address details to \navoid cancellations',style: TextStyle(
                          fontSize: 17
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.280,
                        width: width * width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 55),
                                    child: Text('   Note :   ',style: TextStyle(fontSize: 16,color: Colors.orange.shade900),),
                                  ),
                                  Text('if you cancel within 60 seconds of placing \nyour order,a 100% refund will be issued.\nno refund for  cancellaation made \nafter 60 seconds',style: TextStyle(fontSize: 13,color: Colors.grey),),

                                ],
                              ),
                              Text( '                    Avoid cancallation as it leads to food\n                    wastage.',style: TextStyle(fontSize: 13,color: Colors.grey)),
                              SizedBox(height: height*0.02,),
                              Text('     READ CANCALLATION POLICY',style: TextStyle(color: Colors.orange.shade900),),
                              Text('    ............................................................',style: TextStyle(fontSize: 16,color: Colors.orange.shade900),)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              listofBill.clear();
              Navigator.of(context).pushNamed('/done');
            },
            child: Container(
              height: height*0.065,
              width: width*0.850,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text('Order Now   ₹${total+(total*2/100)+(total*10/100)}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}
List add=[
  {
    'icon':Icons.doorbell_outlined,
    'text':'    Avoid\nringing bell'
  },
  {
    'icon':Icons.door_back_door_outlined,
    'text':' Leave at\n the door'
  },
  {
    'icon':Icons.mic,
    'text':' Direction\n to reach'
  },
];