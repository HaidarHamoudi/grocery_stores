import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_stores/presentation/resources/strings_manager.dart';
import 'package:grocery_stores/presentation/shops/shops.dart';

import '../shops/widgets/shop_info.dart';

class Routes {
  static const String initialRoute = '/';
  static const String propertyInfo = '/propertyInfo';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const ShopsView());
      // case Routes.propertyInfo:
      //   return MaterialPageRoute(builder: (_)=>  PropertyInfoView(index:,));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
