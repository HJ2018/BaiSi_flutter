import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EssenceJokesWidget extends StatelessWidget {
  final logic = Get.put(Essence_jokesLogic());
  final state = Get.find<Essence_jokesLogic>().state;

  EssenceJokesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("段子");
  }
}
