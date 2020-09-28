// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../modules/home/home_screen.dart';
import '../modules/settings/setting_screen.dart';

class Routes {
  static const String homeScreen = '/home';
  static const String settingScreen = '/setting';
  static const all = <String>{
    homeScreen,
    settingScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.settingScreen, page: SettingScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => HomeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(key: args.key),
        settings: data,
      );
    },
    SettingScreen: (data) {
      final args = data.getArgs<SettingScreenArguments>(
        orElse: () => SettingScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingScreen(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  HomeScreenArguments({this.key});
}

/// SettingScreen arguments holder class
class SettingScreenArguments {
  final Key key;
  SettingScreenArguments({this.key});
}
