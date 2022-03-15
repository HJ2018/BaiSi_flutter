import 'package:flutter/material.dart';
import 'package:flutter_baisi/Pages/Essence/essence_page/view.dart';
import 'package:flutter_baisi/Pages/FriendTrends/friend_trends_page/view.dart';
import 'package:flutter_baisi/Pages/Me/me_page/view.dart';
import 'package:flutter_baisi/Pages/New/new_page/view.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  int taBarIdx = 0;
  List<Widget> listController = [
    EssencePageWidget(),
    NewPageWidget(),
    FriendTrendsPageWidget(),
    MePageWidget(),
  ];


  void _onItemTapped(int index) {

    setState(() {
      taBarIdx = index;
    });
  }

  Color getColor(int value) {
    return taBarIdx == value
        ? Colors.red
        : const Color(0XFFBBBBBB);
  }
  @override
  Widget build(BuildContext context) {

    DateTime? lastPopTime;
    // TODO: implement build
    return Scaffold(
      body: listController[taBarIdx],

       bottomNavigationBar:
       BottomAppBar(
         shape: const CircularNotchedRectangle(),
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
           child: Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               GestureDetector(
                   onTap: () { _onItemTapped(0);},
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                       Icon(Icons.home, color: getColor(0)),
                       Text("精华", style: TextStyle(color: getColor(0)))
                     ],
                   )),
               GestureDetector(
                   onTap: () {_onItemTapped(1);},
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                       Icon(Icons.forum, color: getColor(1)),
                       Text("新贴", style: TextStyle(color: getColor(1)))
                     ],
                   )),
               Column(
                 mainAxisSize: MainAxisSize.min,
                 children: const <Widget>[
                   Icon( Icons.home, color: Colors.transparent,),
                   Text("发布", style: TextStyle(color: Color(0xFFEEEEEE)))
                 ],
               ),
               GestureDetector(
                   onTap: () {
                     _onItemTapped(2);
                   },
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                       Icon(Icons.mail, color: getColor(2)),
                       Text("关注", style: TextStyle(color: getColor(2)))
                     ],
                   )),
               GestureDetector(
                   onTap: () {_onItemTapped(3);},
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                       Icon(Icons.person, color: getColor(3)),
                       Text("我的", style: TextStyle(color: getColor(3)))
                     ],
                   ))
             ],
           ),
         ),
       ),

      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [ Icon(Icons.add) ]
        ),
        onPressed: (){
          setState(() {
            print("=======2222222");
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

  }

}