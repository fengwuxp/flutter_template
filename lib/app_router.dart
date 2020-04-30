import 'dart:async';

import 'package:fengwuxp_dart_declarative_api/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/views/goods_detail.dart';
import 'package:flutter_template/views/home/independent_travel/independent_travel_detail.dart';
import 'package:flutter_template/views/home/independent_travel/index.dart';
import 'package:flutter_template/views/common/succuss_result.dart';
import 'package:flutter_template/views/login/forget_password.dart';
import 'package:flutter_template/views/login/login.dart';
import 'package:flutter_template/views/login/register.dart';

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

  /// 登录页面 ==> login
  Future login(BuildContext context,
      {String pathname = "$LOGIN_VIEW_PATH_NAME", RouteCommand command});

  ///注册页面 ==> register
  Future register(BuildContext context,
      {String pathname = "$REGISTER_VIEW_PATH_NAME", RouteCommand command});

  /// 忘记密码页面 ==> forget_password
  Future forgetPassword(BuildContext context,
      {String pathname = "$FORGET_PASSWORD_VIEW_PATH_NAME", RouteCommand command});

  /// 商品详情页面 ==> goods_detail
  Future goodsDetail(BuildContext context, String message, String text,
      {String pathname = "$GOODS__VIEW_PATH_NAME", RouteCommand command});

  /// 自由行首页 ==> independent_travel
  Future independentTravel(BuildContext context,
      {String pathname = "$INDEPENDENT_TRAVEL_VIEW_PATH_NAME", RouteCommand command});

  /// 自由行首页 ==> success_result
  Future successResult(BuildContext context,
      {String pathname = "$SUCCESS_RESULT_VIEW_PATH_NAME", RouteCommand command});

  /// 自由行详情 ==> independent_travel_detail
  Future independentTravelDetail(BuildContext context,
      {String pathname = "$INDEPENT_TRAVEL_DETAIL_VIEW_PATH_NAME", RouteCommand command});

  /// 打开原生详情页面
  Future<Map<dynamic, dynamic>> openNativeView(
      {Map<String, dynamic> params = const {}, String pathname = "$NATIVE_GOODS_VIEW"});
}

final AppRouter = new _AppRouter();
