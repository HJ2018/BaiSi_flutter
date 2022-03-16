import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class EssenceAllWidget extends StatelessWidget {

  EssenceAllWidget({Key? key}) : super(key: key);

  final logic = Get.put(Essence_allLogic());
  final state = Get.find<Essence_allLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Text("全部");
  }
}
