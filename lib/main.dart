import 'package:flutter/material.dart';

import 'package:swiggy_app/utils/routes/routes.dart';

void main()  {

  runApp(const SwiggyApp());
}

class SwiggyApp extends StatelessWidget {
  const SwiggyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}

