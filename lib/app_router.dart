import 'dart:async';

import 'package:fengwuxp_dart_declarative_api/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/views/goods_detail.dart';
import 'package:flutter_template/views/common/succuss_result.dart';
import 'package:flutter_template/views/spinkit/showcase.dart';

/// 路由分为4种情况
/// 1：flutter 打开flutter页面
/// 2：flutter 打开原生页面      ===>   原生路由使用 [NATIVE_ROUTE_SCHEMA] 标记
/// 3：原生页 打开原生页面
/// 4：原生页 打开flutter页面    ===>   原生路由使用 [FLUTTER_ROUTE_SCHEMA] 标记
///
///
const String NATIVE_GOODS_VIEW = "native_page";

class _AppRouter extends RouteCommandSupport {
  _AppRouter() : super();

  /// demo
  Future demo(BuildContext context, String message, String text, String result, {RouteCommand command});

  /// 商品详情页面 ==> goods_detail
  Future goodsDetail(BuildContext context, String message, String text,
      {String pathname = "$GOODS__VIEW_PATH_NAME", RouteCommand command});

  ///  ==> success_result
  Future successResult(BuildContext context,
      {String pathname = "$SUCCESS_RESULT_VIEW_PATH_NAME", RouteCommand command});

  Future showCase(BuildContext context, {String path = "$SHOW_CASE_VIEW_PATH_NAME", RouteCommand command});

  /// 打开原生详情页面
  Future<Map<dynamic, dynamic>> openNativeView(
      {Map<String, dynamic> params = const {}, String pathname = "$NATIVE_GOODS_VIEW"});
}

final AppRouter = new _AppRouter();
