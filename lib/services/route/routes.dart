import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:jwx_flutter/ui/exception_pages/route_not_found.dart';
import 'package:jwx_flutter/ui/home/jwx_home_page.dart';
import 'package:jwx_flutter/ui/login/login_page.dart';

class Routes {
  static String home = "/";
  static String login = "/login";

  static final routeNotFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        debugPrint("Route not found.");
        return RouteNotFoundPage();
      });

  static final homeRoute = AppRoute(
    home,
    Handler(
      handlerFunc: (context, parameters) => JWXHomePage(),
    ),
  );

  static final loginRoute = AppRoute(
    login,
    Handler(
      handlerFunc: (context, parameters) => LoginPage(),
    ),
  );

  static final List<AppRoute> routes = [
    loginRoute,
    homeRoute,
  ];
}