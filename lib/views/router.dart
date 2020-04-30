import 'package:flutter/material.dart';

class Router extends StatefulWidget {
  final String route;
  final Object arguments;
  final Map<String, WidgetBuilder> routes;
  final RouteFactory onUnknownRoute;
  final List<NavigatorObserver> observers;

  Router({
    Key key,
    @required this.route,
    this.arguments,
    @required this.routes,
    this.onUnknownRoute,
    this.observers = const <NavigatorObserver>[],
  })  : assert(routes != null),
        assert(route != null),
        super(key: key);

  static RouterState of(BuildContext context) {
    return context.ancestorStateOfType(const TypeMatcher<RouterState>());
  }

  static NavigatorState getNavigatorState(BuildContext context) {
    return of(context).getNavigatorState();
  }

  @override
  RouterState createState() => RouterState();
}

class RouterState extends State<Router> {
  GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState getNavigatorState() {
    return _navigatorKey.currentState;
  }

  @override
  void didUpdateWidget(Router oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.route != widget.route) {
      getNavigatorState().pushNamed(
        widget.route,
        arguments:
            oldWidget.arguments == widget.arguments ? null : widget.arguments,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      initialRoute: widget.route,
      onUnknownRoute: widget.onUnknownRoute,
      observers: widget.observers,
      onGenerateRoute: (settings) {
        if (widget.routes.containsKey(settings.name)) {
          return MaterialPageRoute(
            builder: widget.routes[settings.name],
            settings: settings,
          );
        }
        return widget.onUnknownRoute(settings);
      },
    );
  }
}
