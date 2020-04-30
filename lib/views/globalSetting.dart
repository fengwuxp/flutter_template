import 'package:flutter/material.dart';
import './404.dart';

class GlobalSettings {
  final GlobalRouterSettings routerSettings;

  GlobalSettings({
    this.routerSettings,
  });
}

class GlobalRouterSettings {
  final RouteFactory onUnknownRoute;

  GlobalRouterSettings({
    this.onUnknownRoute,
  });
}

final GlobalSettings globalSettings = GlobalSettings(
  routerSettings: GlobalRouterSettings(
    onUnknownRoute: (settings) => MaterialPageRoute(
      builder: (context) {
        return NotFoundPage();
      },
    ),
  ),
);
