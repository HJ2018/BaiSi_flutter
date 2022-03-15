

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class APPImageUtils {

  /// 加载本地图片
  static ImageProvider getAssetImage(String name, {String path = "",String format = 'png'}) {

    return AssetImage(getImgPath(name, path: path,format: format));
  }
  static String getImgPath(String name, {String path = "" ,String format = 'png'}) {
    return 'images/$path$name.$format';
  }


}


class ImageName {
  static String tabBarEssence = "tabBar_essence_icon";
  static String tabBarFriendTrends = "tabBar_friendTrends_icon";
  static String tabBarMe = "tabBar_me_icon";
  static String tabBarNew = "tabBar_new_icon";
}

class ImagePath {
  static String tabBar = "tabBar/";
}
