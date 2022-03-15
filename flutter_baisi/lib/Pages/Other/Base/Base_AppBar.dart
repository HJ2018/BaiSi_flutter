
import 'package:flutter/material.dart';


const Color _navbgColor = Colors.white;
const Color _titleColorWhite = Colors.white;
const Color _titleColorBlack = Colors.black;
const double _titleFontSize = 18.0;
const double _textFontSize = 16.0;
const double _itemSpace = 15.0; //右侧item内间距
const double _imgWH = 22.0; //右侧图片wh
const double _rightSpace = 5.0; //右侧item右间距
const Brightness _brightness = Brightness.light;

backAppBar(BuildContext context, String title,
    { String? rightText,
      String? rightImgPath ,
      Color backgroundColor = _navbgColor,
      Brightness brightness = _brightness,
      Function? rightItemCallBack,
      Color? rightTextColor,
      bool isShowColor = false,
      bool isBack = true,
      Function? backCallBack}) {
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
      Color backgroundColor = _navbgColor,
      Brightness brightness = _brightness,
      double elevation = 0,
      PreferredSizeWidget? bottom,
      Function? rightItemCallBack,
      Function? leftItemCallBack,
    }) {
  Color _color = (backgroundColor == Colors.transparent ||
      backgroundColor == Colors.white )
      ? _titleColorBlack
      : _titleColorWhite;

  Widget rightItem = const Text("");
  if (rightText != null) {
    rightItem = InkWell(
      child: Container(
          margin: const EdgeInsets.all(_itemSpace),
          color: Colors.transparent,
          child: Center(
              child: Text(rightText,
                  style: TextStyle(fontSize: _textFontSize, color: isShowColor == true? rightTextColor :_color)))),
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
        width: _imgWH,
        height: _imgWH,
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
    Text(title, style: TextStyle(fontSize: _titleFontSize, color: _color)),
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
          const SizedBox(width: _rightSpace),
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

