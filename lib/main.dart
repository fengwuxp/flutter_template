import 'package:fenguwxp_fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_template/app_router.dart';
import 'package:flutter_template/route/route_init.dart';
import 'package:flutter_template/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    initRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Key("App"),
      title: 'flutter tempalte',
      builder: FlutterBoost.init(postPush: _onRoutePushed),
      onGenerateRoute: Router.appRouter.generator,
    );
  }

  void _onRoutePushed(String pageName, String uniqueId, Map params, Route route, Future _) {
    print("=====>  $pageName  $uniqueId $params");
  }
}
