import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EssenceVideoWidget extends StatelessWidget {
  final logic = Get.put(Essence_videoLogic());
  final state = Get.find<Essence_videoLogic>().state;

  EssenceVideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("视频");
  }
}
