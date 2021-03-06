import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const GOODS__VIEW_PATH_NAME = "goods_detail";

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
            BotToast.showLoading();
          },
        ),
      ),
    );
  }
}
