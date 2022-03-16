import 'package:flutter/material.dart';

import 'essence_all/view.dart';
import 'essence_jokes/view.dart';
import 'essence_picture/view.dart';
import 'essence_video/view.dart';
import 'essence_voice/view.dart';

class EssencePageState {

  ///tabs[TabController]
  TabController? tabController;

  ///topName
  List? nameList;

  ///tabs[Title] 名字
  List<Widget>? tabs;

  ///tabs[tabBarView] tabsView
  List<Widget>? tabBarView;

  EssencePageState() {
    ///Initialize variables

    nameList = ["全部","视频","声音","图片","段子"];

    tabs = nameList?.map((name) {
      return Tab( text:name);
    }).toList();

    tabBarView = [
      EssenceAllWidget(),
      EssenceVideoWidget(),
      EssenceVoiceWidget(),
      EssencePictureWidget(),
      EssenceJokesWidget(),
   ];

  }
}
