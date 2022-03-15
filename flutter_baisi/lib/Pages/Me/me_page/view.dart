import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Other/Base_AppBar.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MePageWidget extends StatelessWidget {
  MePageWidget({Key? key}) : super(key: key);
  final logic = Get.put(MePageLogic());
  final state = Get.find<MePageLogic>().state;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:backAppBar(context, "我的",isBack: false),
      body:const Text("data"),
    );
  }
}
