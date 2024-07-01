import 'package:flutter/material.dart';

class OrderStatusPage extends StatefulWidget {
  @override
  State<OrderStatusPage> createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Order Status',style: TextStyle(
          fontSize: 20
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              // handle call button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderStatusTile(
                  status: "Order Received",
                  time: "08:30 PM",
                  description: "your order got confirmed",
                  isCompleted: true,
                ),
                OrderStatusTile(
                  status: "Preparing",
                  time: "08:40 PM",
                  description: "We started preparing for your dish",
                  isCompleted: true,
                ),
                OrderStatusTile(
                  status: "Cooking",
                  description: "We have started cooking your food",
                  isCompleted: true,
                ),
                OrderStatusTile(
                  status: "It's Ready",
                  description: "Our executive started to deliver your food",
                  isCompleted: false,
                ),
                OrderStatusTile(
                  status: "Delivered !!!",
                  description: "Enjoy your meal, and have a great day. Don't forget to rate us",
                  isCompleted: false,
                ),

              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/images/intro/bildings-removebg-preview.png',),
          ),
        ],
      ),
    );
  }
}

class OrderStatusTile extends StatelessWidget {
  final String status;
  final String? time;
  final String description;
  final bool isCompleted;

  OrderStatusTile({
    required this.status,
    this.time,
    required this.description,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isCompleted ? Colors.green : Colors.grey,
            ),
            CustomPaint(
              size: Size(2, 50),
              painter: DottedLinePainter(),
            ),
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (time != null)
                Text(
                  time!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var max = size.height;
    var dashWidth = 4;
    var dashSpace = 4;
    double startY = 0;
    while (startY < max) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}