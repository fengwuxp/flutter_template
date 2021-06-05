import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

import '../../app_router.dart';

class Home extends StatelessWidget {
  Future<Null> _onRefresh() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: RaisedButton(
            child: Text('首页'),
            onPressed: () {
              print("open first page again!");
              BoostNavigator.instance.push("flutter://nativePage", arguments: <String, dynamic>{
                "query": {"aaa": "bbb"}
              }).then((value) {
                print("did recieve first route result");
                print("did recieve first route result $value");
              });
            },
          )),
          Center(
              child: RaisedButton(
            child: Text('spinkit case'),
            onPressed: () {
              AppRouter.showCase(context);
            },
          ))
        ]));
  }
}
