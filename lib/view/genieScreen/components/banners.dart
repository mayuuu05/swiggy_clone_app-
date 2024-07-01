import 'package:flutter/material.dart';
ScrollController _scrollController = ScrollController();
SingleChildScrollView buildSingleChildScrollView() {
  return SingleChildScrollView(
    controller: _scrollController,
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Row(
        children: [
          Image.asset('assets/images/intro/genBann1.png', height: 280,
            width: 270,),
          Image.asset('assets/images/intro/genBann2.png', height: 280,
            width: 270,),
          Image.asset('assets/images/intro/genBann3.png', height: 280,
            width: 270,),
          Image.asset('assets/images/intro/genBann4.png', height: 280,
            width: 270,),
        ],
      ),
    ),
  );
}