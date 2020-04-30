import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

const  GOODS__VIEW_PATH_NAME = "goods_detail";

class GoodsView extends StatefulWidget {


//  GoodsView(ARouteOption option) : super();
  @override
  State<StatefulWidget> createState() {
    return new _GoodsViewState();
  }
}

class _GoodsViewState extends State<GoodsView> {
  _GoodsViewState();

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(GoodsView oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('[XDEBUG] - FirstFirstRouteWidget is disposing~');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('商品详情'),
          onPressed: () {
            print("open first page again!");
            FlutterBoost.singleton.open("flutter://nativePage", urlParams: <dynamic, dynamic>{
              "query": {"aaa": "bbb"}
            }).then((Map value) {
              print("did recieve first route result");
              print("did recieve first route result $value");
            });
          },
        ),
      ),
    );
  }
}
