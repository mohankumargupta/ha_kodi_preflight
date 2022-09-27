import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/check_wifi.dart';
import 'screens/intro.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomRoute {
  String route;
  StatelessWidget screen;
  CustomRoute(this.route, this.screen);
}

final routerMap = [
  CustomRoute("/", const IntroScreen()),
  CustomRoute("/check_wifi", const CheckWifiScreen()),
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
