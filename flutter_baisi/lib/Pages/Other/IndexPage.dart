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
        _tabBarButton(0, "精华",tabBarIcon: Icons.home),
        _tabBarButton(1, "新贴",tabBarIcon: Icons.fiber_new_rounded),
        Column(
          mainAxisSize: MainAxisSize.min,
          children:  [Container()],
        ),
        _tabBarButton(2, "关注",tabBarIcon: Icons.people_outline_rounded),
        _tabBarButton(3, "我的",tabBarIcon: Icons.person_pin_sharp),
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
  Widget _tabBarButton(int index,String name,{String imageName = "",IconData? tabBarIcon = Icons.home}){
    return  GestureDetector(
        onTap: () { _onItemTapped(index);},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /// 后面升级版本用这个
            // Image(image: APPImageUtils.getAssetImage(imageName,path: ImagePath.tabBar))
            Icon(tabBarIcon,color:_getColor(index),),
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