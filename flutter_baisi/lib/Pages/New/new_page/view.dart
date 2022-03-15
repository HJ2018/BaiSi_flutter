import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Other/Base_AppBar.dart';
import 'package:get/get.dart';

import 'logic.dart';

class NewPageWidget extends StatelessWidget {

  NewPageWidget({Key? key}) : super(key: key);
  final logic = Get.put(NewPageLogic());
  final state = Get.find<NewPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:backAppBar(context, "新贴",isBack: false),
      body:const Text("data"),
    );
  }
}
