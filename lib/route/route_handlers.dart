import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_template/views/common/succuss_result.dart';
import 'package:flutter_template/views/goods_detail.dart';
import 'package:flutter_template/views/spinkit/showcase.dart';

import '../components/demo/demo_simple_component.dart';
import '../helpers/color_helpers.dart';

final demoRouteHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String message = params["message"]?.first;
  String colorHex = params["color_hex"]?.first;
  String result = params["result"]?.first;
  Color color = Color(0xFFFFFFFF);
  if (colorHex != null && colorHex.length > 0) {
    color = Color(ColorHelpers.fromHexString(colorHex));
  }
  return DemoSimpleComponent(message: message, color: color, result: result);
});

final goodsViewRouteHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return GoodsView();
});

final successResultViewRouteHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SuccessResultView();
});

final spinkitShowCase = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ShowCase();
});
