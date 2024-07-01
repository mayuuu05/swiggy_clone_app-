import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_app/utils/colors/colors.dart';
import 'package:swiggy_app/view/DinoutScreen/dinout.dart';
import 'package:swiggy_app/view/HomeScreen/homeScreen.dart';
import 'package:swiggy_app/view/cardScreen/card.dart';
import 'package:swiggy_app/view/genieScreen/genie.dart';
import 'package:swiggy_app/view/login/login.dart';


import '../reOrder/reOrder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
              )
            ],

          ),
          child: NavigationBar(
            backgroundColor: Colors.white,indicatorColor: Colors.red.shade50,
            height: height*0.09,
            elevation: 0,
            selectedIndex: _selectedIndex,
            onDestinationSelected:_onItemTapped,
            destinations: [

              NavigationDestination(icon: FaIcon(FontAwesomeIcons.mortarPestle,size: 22 ), label: 'Food'),
              NavigationDestination(icon: FaIcon(FontAwesomeIcons.ribbon,size: 22, ), label: 'Dineout'),
              NavigationDestination(icon: FaIcon(FontAwesomeIcons.redo ,size: 22,), label: 'Reorder'),
              NavigationDestination(icon: FaIcon(FontAwesomeIcons.wallet ,size: 22,), label: 'Card'),
              NavigationDestination(icon:  FaIcon(FontAwesomeIcons.receipt ,size: 22,), label: 'Genie'),
            ],
          ),
        ),


        body: IndexedStack(
          index: _selectedIndex,
          children: [
            FoodScreen(),
            DineOutScreen(),
            reorder(),
            CardScreen(),
            Geniepage(),
          ],
        ),

      ),
    );
  }
}
