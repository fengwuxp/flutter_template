import 'package:flutter/material.dart';

import 'router.dart';
import 'globalSetting.dart';
import 'home/index.dart';
import 'api/definitions/User.dart';
import 'package:fluttertoast/fluttertoast.dart';

const String HOME_VIEW_PATH_NAME = "home";

class HomeView extends StatefulWidget {
  @override
  _HomViewState createState() => new _HomViewState();
}

class _HomViewState extends State<HomeView> {
  int activeBottomNavigationBar = 0;

//  GlobalKey<RouterState> _routerKey = GlobalKey();

  // 页面tab items
  List<BottomNavigationBarItem> _tabs = [];

  // 页面
  List<Widget> _list = List();

  void _changeActiveBottomNavigationBar(int value) {
    setState(() {
      activeBottomNavigationBar = value;
    });
//    _routerKey.currentState.getNavigatorState().pushNamed(value.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabs.addAll([
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/images/icons/icon_home.png'),
          size: 24,
        ),
        title: Text('首页'),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/images/icons/icon_shopping.png'),
          size: 24,
        ),
        title: Text('商城'),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/images/icons/icon_cart.png'),
          size: 24,
        ),
        title: Text('购物车'),
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/images/icons/icon_my.png'),
          size: 24,
        ),
        title: Text('我的'),
      ),
    ]);
    _list..add(new Home())..add(new Home())..add(new Home())..add(new Home());
  }

  @override
  Widget build(BuildContext context) {
    User user = User.fromJsonString('{"name": "章三", "age": 10}');
    print(user.toJsonString());

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: IndexedStack(
            index: activeBottomNavigationBar,
            children: _list,
          ),
          floatingActionButton: activeBottomNavigationBar == 0
              ? FloatingActionButton(
                  child: Icon(Icons.vertical_align_top, color: Color.fromARGB(255, 102, 102, 102)),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                )
              : null,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: _tabs,
            currentIndex: activeBottomNavigationBar,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            unselectedItemColor: Color.fromRGBO(83, 83, 83, 1),
            selectedItemColor: Color.fromRGBO(54, 117, 242, 1),
            showUnselectedLabels: true,
            onTap: _changeActiveBottomNavigationBar,
            selectedFontSize: 12.0,
          ),
        ));
  }

  int _lastClickBackTimes = 0;

  Future<bool> _onWillPop() {
    print('滚动');
    //计算两次时间间隔
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - _lastClickBackTimes > 2200) {
      _lastClickBackTimes = DateTime.now().millisecondsSinceEpoch;
      Fluttertoast.showToast(msg: '再次点击返回退出应用', gravity: ToastGravity.BOTTOM);
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
