import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/intro.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroScreen();
      },
    ),
    GoRoute(
      path: '/b',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroScreen();
      },
    ),
  ],
);
