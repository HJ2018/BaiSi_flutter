import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Essence/essence_page/state.dart';


///* tabBar内容******/
Widget essenceContent(EssencePageState state){
  return TabBarView(
    controller: state.tabController,
    children: state.tabBarView!,
  );
}


///* tabBar样式******/
PreferredSizeWidget essenceTabBarBottom(EssencePageState state){
  return TabBar(
    controller: state.tabController,
    labelColor: Colors.red,
    labelStyle: const TextStyle(fontSize: 15.0),
    unselectedLabelColor: const Color(0xff999999),
    unselectedLabelStyle: const TextStyle(fontSize: 16.0),
    indicatorSize: TabBarIndicatorSize.label,
    indicatorColor:Colors.red,
    tabs: state.tabs!,
  );
}