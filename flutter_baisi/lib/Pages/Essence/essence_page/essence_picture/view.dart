import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EssencePictureWidget extends StatelessWidget {
  final logic = Get.put(Essence_pictureLogic());
  final state = Get.find<Essence_pictureLogic>().state;

  EssencePictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("图片");
  }
}
