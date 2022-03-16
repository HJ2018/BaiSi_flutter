import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class EssencePageLogic extends GetxController with GetSingleTickerProviderStateMixin{
  final EssencePageState state = EssencePageState();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.tabController = TabController(length: state.tabs!.length, vsync: this);
  }



}
