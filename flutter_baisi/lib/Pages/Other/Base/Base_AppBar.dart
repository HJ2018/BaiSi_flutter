import 'package:flutter/material.dart';


backAppBar(BuildContext context, String title,
    { String? rightText,
      String? rightImgPath ,
      Color backgroundColor = Colors.white,
      Brightness brightness =  Brightness.light,
      Function? rightItemCallBack,
      Color? rightTextColor,
      bool isShowColor = false,
      bool isBack = true,
      Function? backCallBack,
      PreferredSizeWidget? bottom,
    }) {
  return baseAppBar(
    context,
    title,
    isBack: isBack,
    rightText: rightText,
    rightImgPath: rightImgPath,
    rightItemCallBack: rightItemCallBack,
    leftItemCallBack: backCallBack,
    backgroundColor: backgroundColor,
    brightness: brightness,
    rightTextColor: rightTextColor,
    isShowColor: isShowColor,
    bottom: bottom,

  );
}
//baseAppBar
baseAppBar(
    BuildContext context,
    String title, {
      String? rightText,
      String? rightImgPath,
      Widget? leftItem,
      Color? rightTextColor,
      bool? isShowColor,
      bool isBack = true,
      Color backgroundColor = Colors.white,
      Brightness brightness =  Brightness.light,
      double elevation = 0,
      PreferredSizeWidget? bottom,
      Function? rightItemCallBack,
      Function? leftItemCallBack,
    }) {
  Color _color = (backgroundColor == Colors.transparent ||
      backgroundColor == Colors.white )
      ? Colors.black
      : Colors.white;

  Widget rightItem = const Text("");
  if (rightText != null) {
    rightItem = InkWell(
      child: Container(
          margin: const EdgeInsets.all(15),
          color: Colors.transparent,
          child: Center(
              child: Text(rightText,
                  style: TextStyle(fontSize: 16, color: isShowColor == true? rightTextColor :_color)))),
      onTap: () {
        if (rightItemCallBack != null) {
          rightItemCallBack();
        }
      },
    );
  }
  if (rightImgPath != null) {
    rightItem = IconButton(
      icon: Image.asset(
        rightImgPath,
        width: 22, height: 22,
        color: _color,
      ),
      onPressed: () {
        if (rightItemCallBack != null) {
          rightItemCallBack();
        }
      },
    );
  }
  return AppBar(
    title:
    Text(title, style: TextStyle(fontSize: 18, color: _color)),
    centerTitle: true,
    backgroundColor: backgroundColor,
    brightness: brightness,
    bottom: bottom,
    elevation: elevation,
    leading: isBack == false
        ? leftItem
        : IconButton(
//      icon: Icon(Icons.arrow_back_ios,color: _color),
      icon:ImageIcon(
        const AssetImage("images/otherImage/back_black.png"),
        color: _color,
      ),
      iconSize: 18,
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      onPressed: () {
        if (leftItemCallBack == null) {
          _popThis(context);
        } else {
          leftItemCallBack();
        }
      },
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          rightItem,
          const SizedBox(width: 5),
        ],
      ),
    ],
  );
}

void _popThis(BuildContext context) {
  if (Navigator.of(context).canPop()) {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.of(context).pop();
  }
}

