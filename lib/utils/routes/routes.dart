
import 'package:flutter/material.dart';
import 'package:swiggy_app/view/DinoutScreen/DetailScreen.dart';
import 'package:swiggy_app/view/DinoutScreen/MenuScreen.dart';
import 'package:swiggy_app/view/HomeScreen/OfferZone.dart';
import 'package:swiggy_app/view/HomeScreen/localMustTry.dart';
import 'package:swiggy_app/view/HomeScreen/offerzone2.dart';
import 'package:swiggy_app/view/HomeScreen/orderConfirmed.dart';
import 'package:swiggy_app/view/HomeScreen/orderDEtailScreen.dart';
import 'package:swiggy_app/view/bottomNavigation/Bottamnavigation.dart';
import 'package:swiggy_app/view/cardScreen/apply.dart';
import 'package:swiggy_app/view/cardScreen/card.dart';
import 'package:swiggy_app/view/introScreen/intro.dart';
import 'package:swiggy_app/view/location/addLocation/addlocation.dart';
import 'package:swiggy_app/view/location/location.dart';
import 'package:swiggy_app/view/login/login.dart';
import 'package:swiggy_app/view/notification/notification.dart';
import 'package:swiggy_app/view/otpScreen/getOtpScreen.dart';
import 'package:swiggy_app/view/otpScreen/otpScreen.dart';
import 'package:swiggy_app/view/profilePage/address.dart';
import 'package:swiggy_app/view/profilePage/payment.dart';
import 'package:swiggy_app/view/searchPage/search.dart';


import '../../view/HomeScreen/award.dart';
import '../../view/HomeScreen/cartPage.dart';
import '../../view/profilePage/profile.dart';
import '../../view/reOrder/reOrder.dart';
import '../../view/splashScreen/splashScreen.dart';



class AppRoutes{

  static Map <String,Widget Function(BuildContext)> routes= {
    '/': (context) => const SplashScreen(),
    '/intro': (context) => const IntroScreen(),
    '/login': (context) => const LoginPage(),
    '/otp': (context) => const OtpScreen(),
    '/search': (context) => const SearchPage(),
    '/getOtp': (context) => const Getotpscreen(),
    '/location': (context) => const Locationpage(),
    '/addLocation': (context) => const Addlocation(),
    '/notification': (context) => const NotificatinScreen(),
    '/home': (context) => const Homepage(),
    '/local': (context) => const LocalMustTry(),
    '/acc': (context) => const UserProfile(),
    '/reorder': (context) => const reorder(),
    '/card': (context) => const CardScreen(),
    '/apply': (context) => const ApplyPage(),
    '/offerZone': (context) => const OfferZonePage(),
    '/loPage': (context) => const LocalMustTryPage(),
    '/award': (context) => const RestaurantawardsPage(),
    '/address': (context) => const Address(),
    '/detail': (context) => const offerpage(),
    '/cart': (context) => const addcard(),
    '/pay': (context) => const Payment(),
    '/done': (context) => const successfully(),
    '/orDetail': (context) =>  OrderStatusPage(),
  };
}