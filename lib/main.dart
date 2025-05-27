import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_web_about/page/MyHomePage.dart';
import 'package:flutter_web_about/router/Router.dart';
import 'package:flutter_web_about/theme/color_theme.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: router,
  ));
}

