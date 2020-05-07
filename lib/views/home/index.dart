import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:fenguwxp_fluro/fluro.dart';

import '../../app_router.dart';

class Home extends StatelessWidget {
  final router = new Router();

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
              FlutterBoost.singleton.open("flutter://nativePage", urlParams: <dynamic, dynamic>{
                "query": {"aaa": "bbb"}
              }).then((Map value) {
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
