import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/check_wifi.dart';
import 'screens/home.dart';
import 'screens/home_assistant_auth.dart';
import 'screens/home_assistant_search.dart';
import 'screens/intro.dart';

class CustomRoute {
  String route;
  Widget screen;
  CustomRoute(this.route, this.screen);
}

final routerMap = [
  CustomRoute("/", const IntroScreen()),
  CustomRoute("/check_wifi", const CheckWifiScreen()),
  CustomRoute("/ha_search", const HomeAssistantSearchScreen()),
  CustomRoute("/ha_auth", const HomeAssistantAuthScreen()),
  CustomRoute("/home", const HomeScreen())
];

final finalRoutes = routerMap
    .map((element) => GoRoute(
        path: element.route,
        builder: (BuildContext context, GoRouterState state) {
          return element.screen;
        }))
    .toList();

final GoRouter router = GoRouter(routes: finalRoutes

    //routerMap.iterator.current.map<GoRoute>((route, screen) => GoRoute(path: route, builder: screen)).toList()

    /*<GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroScreen();
      },
    ),
    GoRoute(
      path: '/checkingwifi',
      builder: (BuildContext context, GoRouterState state) {
        return const CheckWifiScreen();
      },
    ),
  ],*/
    );
