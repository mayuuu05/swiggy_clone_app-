import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key});

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

GlobalKey<FormState> formkey = GlobalKey();


class _ApplyPageState extends State<ApplyPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.arrow_left),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                CupertinoIcons.multiply,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                'Your mobile & PAN number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                '    An OTP will be sent to this mobile number ',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.07,
                  width: width,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    style: TextStyle(fontSize: 15, wordSpacing: 2),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      label: Text(
                        'Mobile number',
                        style: TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: '88888888888',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.07,
                  width: width,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'value must be requried';
                      }
                    },
                    style: TextStyle(fontSize: 15, wordSpacing: 2),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      label: Text(
                        'PAN CARD',
                        style: TextStyle(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: '5GL34R524',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: height * 0.180,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text('Have an HDFC Bank saving account /card?',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        ' Ensure mobile number matches youe bank records by logging into Swiggy with registered mobile number.',
                        style: TextStyle(
                          letterSpacing: 1,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Container(
          alignment: Alignment.center,
          height: height * 0.08,
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {
              bool res = formkey.currentState!.validate();
              if (res)
              {
                Navigator.of(context).pushNamed('');
              }
            },
            child: Text(
              'Next',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}