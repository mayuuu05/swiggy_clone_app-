
import 'package:flutter/material.dart';
import 'package:swiggy_app/utils/colors/colors.dart';
import 'package:swiggy_app/view/login/components/banner.dart';
import 'package:swiggy_app/view/login/components/richText.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            banner(height, width),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              subtitle: Text(
                'Login/Create Account to manage orders',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/otp');
              },
              child: Container(
                height: height * 0.1 - 25,
                width: width * 0.9 + 10,
                decoration: BoxDecoration(
                  color: mainColor,
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            buildText(),
            const Divider(
              thickness: 1.3,
              color: Colors.black,
              indent: 15,
              endIndent: 17,
            ),
            ListTile(
              leading: Icon(
                Icons.percent,
                size: 15,
              ),
              title: Text(
                'Offers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
              ),
            ),
            Divider(
              thickness: 0.2,
              color: Colors.grey,
              indent: 15,
              endIndent: 17,
            ),
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                size: 15,
              ),
              title: Text(
                'Send FeedBack',
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                'App version 4.58.0 (1240)',
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
              ),
            )
          ],
        ),
      ),
    );
  }




}
