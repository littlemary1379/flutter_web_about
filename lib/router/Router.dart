import 'package:flutter_web_about/page/AboutPage.dart';
import 'package:flutter_web_about/page/MyHomePage.dart';
import 'package:flutter_web_about/page/ProjectPage.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutPage(),
    ),
    GoRoute(
      path: '/project',
      builder: (context, state) => ProjectPage(),
    ),
  ],
);