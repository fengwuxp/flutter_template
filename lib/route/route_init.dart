import 'package:fenguwxp_fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_template/components/demo/demo_simple_component.dart';
import 'package:flutter_template/views/goods_detail.dart';
import 'package:flutter_template/views/home.dart';
import 'package:flutter_template/views/common/succuss_result.dart';
import 'package:flutter_template/views/spinkit/showcase.dart';

import './route_handlers.dart';

void initRoutes() {
  _defineRoutes();
  _registerFlutterBoots();
}

/// 配置flutter 页面
void _defineRoutes() {
  final Router router = Router.appRouter;
  router.notFoundHandler =
      handlerFactory0((BuildContext context, [Map<String, List<String>> uriVariables, dynamic state]) {
    print("ROUTE WAS NOT FOUND !!!");
  });

  router.define(DEMO_VIEW_PATH_NAME, handler: demoRouteHandler);

  router.define("/$GOODS__VIEW_PATH_NAME", handler: goodsViewRouteHandler);

  router.define("/$SUCCESS_RESULT_VIEW_PATH_NAME", handler: successResultViewRouteHandler);
  router.define("/$SHOW_CASE_VIEW_PATH_NAME", handler: spinkitShowCase);
}

// 注册需要被原生打开的页面
void _registerFlutterBoots() {
  FlutterBoost.singleton.registerPageBuilders({
    HOME_VIEW_PATH_NAME: (pageName, params, _) => HomeView(),
    GOODS__VIEW_PATH_NAME: (pageName, params, _) => GoodsView(),
  });

  // 注册路由监听
  FlutterBoost.singleton.addBoostNavigatorObserver(AppBoostNavigatorObserver());
}

class AppBoostNavigatorObserver extends NavigatorObserver {
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didPush");
  }

  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didPop");
  }

  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didRemove");
  }

  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    print("flutterboost#didReplace");
  }
}
