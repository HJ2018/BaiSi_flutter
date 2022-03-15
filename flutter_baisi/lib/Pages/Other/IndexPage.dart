import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Essence/essence_page/view.dart';
import 'package:flutter_baisi/Pages/FriendTrends/friend_trends_page/view.dart';
import 'package:flutter_baisi/Pages/Me/me_page/view.dart';
import 'package:flutter_baisi/Pages/New/new_page/view.dart';

import 'Base/base_image.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {

  /// 默认选择第一个页面[精华]
  int taBarIdx = 0;

  /// 页面放到数组中
  List<Widget> listController = [EssencePageWidget(), NewPageWidget(), FriendTrendsPageWidget(), MePageWidget(),];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: listController[taBarIdx],
       bottomNavigationBar:
       BottomAppBar(
         shape: const CircularNotchedRectangle(),
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
           child: _bottomAppBar(),
         ),
       ),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


  /// tabBar bottomAppBar
  Row _bottomAppBar(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _tabBarButton(0, "精华",ImageName.tabBarEssence),
        _tabBarButton(1, "新贴",ImageName.tabBarNew),
        Column(
          mainAxisSize: MainAxisSize.min,
          children:  [Container()],
        ),
        _tabBarButton(2, "关注",ImageName.tabBarFriendTrends),
        _tabBarButton(3, "我的",ImageName.tabBarMe),
      ],
    );
  }


  /// tabBar 中间按钮
  FloatingActionButton _floatingActionButton(){
    return  FloatingActionButton(
      backgroundColor:  Colors.grey,
      child:const Icon(Icons.add),
      onPressed: (){
        if (kDebugMode) {
          print("=======2222222");
        }
      },
    );
  }



  /// tabBar 按钮
  Widget _tabBarButton(int index,String name,String imageName){
    return  GestureDetector(
        onTap: () { _onItemTapped(index);},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            const SizedBox(
              width: 12, height: 12,
              child: Image(
                width: 38,height: 43,
                image: AssetImage('images/tabBar/tabBar_essence_icon.png'),
                fit: BoxFit.fill,
              ),
            ),
            Text(name, style: TextStyle(color: _getColor(index)))
          ],
        ));
  }



  ///taBar 点击通过index切换
  void _onItemTapped(int index) {
    setState(() { taBarIdx = index;});
  }



  /// 切换颜色
  Color _getColor(int value) {
    return taBarIdx == value ? Colors.red : const Color(0XFFBBBBBB);
  }


}