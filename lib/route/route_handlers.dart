import 'package:fenguwxp_fluro/fluro.dart';
import 'package:fengwuxp_dart_basic/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_template/views/common/succuss_result.dart';
import 'package:flutter_template/views/goods_detail.dart';
import 'package:flutter_template/views/spinkit/showcase.dart';

import '../components/demo/demo_simple_component.dart';
import '../helpers/color_helpers.dart';

var demoRouteHandler = handlerFactory3<String, String, String>((BuildContext context, message, coloHex, result,
    [Map<String, List<String>> uriVariables, dynamic state]) {
  Color color = Color(0xFFFFFFFF);
  if (StringUtils.hasText(coloHex)) {
    color = Color(ColorHelpers.fromHexString(coloHex));
  }
  return DemoSimpleComponent(message: message, color: color, result: result);
});

var goodsViewRouteHandler = handlerFactory1<num>((BuildContext context, num goodsId, [Map<String, List<String>> uriVariables, dynamic state]) {
  return GoodsView();
});

var successResultViewRouteHandler =
    handlerFactory0((BuildContext context, [Map<String, List<String>> uriVariables, dynamic state]) {
  return SuccessResultView();
});

var spinkitShowCase = handlerFactory0((BuildContext context, [Map<String, List<String>> uriVariables, dynamic state]) {
  return ShowCase();
});
