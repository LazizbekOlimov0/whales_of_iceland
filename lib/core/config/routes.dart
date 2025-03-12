import 'package:flutter/material.dart';

sealed class AppRoutes {
  static const home = "/";
  static const detail = "detail";
  static const completed = "completed";

  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{

  };
}