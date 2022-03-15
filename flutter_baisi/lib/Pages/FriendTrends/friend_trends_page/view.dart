import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Other/Base_AppBar.dart';
import 'package:get/get.dart';

import 'logic.dart';

class FriendTrendsPageWidget extends StatelessWidget {

  FriendTrendsPageWidget({Key? key}) : super(key: key);

  final logic = Get.put(FriendTrendsPageLogic());
  final state = Get.find<FriendTrendsPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:backAppBar(context, "关注",isBack: false),
      body:const Text("data"),
    );
  }
}
