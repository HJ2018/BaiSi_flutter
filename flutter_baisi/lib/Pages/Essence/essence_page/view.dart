import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Other/Base/Base_AppBar.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EssencePageWidget extends StatelessWidget {

  EssencePageWidget({Key? key}) : super(key: key);

  final logic = Get.put(EssencePageLogic());
  final state = Get.find<EssencePageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:backAppBar(context, "精华",isBack: false),
      body:const Text("data"),
    );
  }
}
