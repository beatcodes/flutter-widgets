// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../learning/bottom_navbar_widget.dart';
import '../learning/change_notifier.dart';
import '../learning/consumer_widget.dart';
import '../learning/dialog_widget.dart';
import '../learning/form_widgets.dart';
import '../learning/menu_widget.dart';
import '../learning/tabbar_widget.dart';
import '../modules/home/home_screen.dart';
import '../modules/settings/setting_screen.dart';

class Routes {
  static const String homeScreen = '/home';
  static const String settingScreen = '/setting';
  static const String changeNotifierScreen = '/notifier';
  static const String formScreen = '/form';
  static const String menuScreen = '/menu';
  static const String bottomNavBarScreen = '/BottomNavBarScreen';
  static const String tabBarScreen = '/TabBarScreen';
  static const String dialogScreen = '/DialogScreen';
  static const String consumerScreen = '/ConsumerScreen';
  static const all = <String>{
    homeScreen,
    settingScreen,
    changeNotifierScreen,
    formScreen,
    menuScreen,
    bottomNavBarScreen,
    tabBarScreen,
    dialogScreen,
    consumerScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.settingScreen, page: SettingScreen),
    RouteDef(Routes.changeNotifierScreen, page: ChangeNotifierScreen),
    RouteDef(Routes.formScreen, page: FormScreen),
    RouteDef(Routes.menuScreen, page: MenuScreen),
    RouteDef(Routes.bottomNavBarScreen, page: BottomNavBarScreen),
    RouteDef(Routes.tabBarScreen, page: TabBarScreen),
    RouteDef(Routes.dialogScreen, page: DialogScreen),
    RouteDef(Routes.consumerScreen, page: ConsumerScreen),
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
    ChangeNotifierScreen: (data) {
      final args = data.getArgs<ChangeNotifierScreenArguments>(
        orElse: () => ChangeNotifierScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangeNotifierScreen(key: args.key),
        settings: data,
      );
    },
    FormScreen: (data) {
      final args = data.getArgs<FormScreenArguments>(
        orElse: () => FormScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FormScreen(key: args.key),
        settings: data,
      );
    },
    MenuScreen: (data) {
      final args = data.getArgs<MenuScreenArguments>(
        orElse: () => MenuScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuScreen(key: args.key),
        settings: data,
      );
    },
    BottomNavBarScreen: (data) {
      final args = data.getArgs<BottomNavBarScreenArguments>(
        orElse: () => BottomNavBarScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavBarScreen(key: args.key),
        settings: data,
      );
    },
    TabBarScreen: (data) {
      final args = data.getArgs<TabBarScreenArguments>(
        orElse: () => TabBarScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TabBarScreen(key: args.key),
        settings: data,
      );
    },
    DialogScreen: (data) {
      final args = data.getArgs<DialogScreenArguments>(
        orElse: () => DialogScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => DialogScreen(key: args.key),
        settings: data,
      );
    },
    ConsumerScreen: (data) {
      final args = data.getArgs<ConsumerScreenArguments>(
        orElse: () => ConsumerScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConsumerScreen(key: args.key),
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

/// ChangeNotifierScreen arguments holder class
class ChangeNotifierScreenArguments {
  final Key key;
  ChangeNotifierScreenArguments({this.key});
}

/// FormScreen arguments holder class
class FormScreenArguments {
  final Key key;
  FormScreenArguments({this.key});
}

/// MenuScreen arguments holder class
class MenuScreenArguments {
  final Key key;
  MenuScreenArguments({this.key});
}

/// BottomNavBarScreen arguments holder class
class BottomNavBarScreenArguments {
  final Key key;
  BottomNavBarScreenArguments({this.key});
}

/// TabBarScreen arguments holder class
class TabBarScreenArguments {
  final Key key;
  TabBarScreenArguments({this.key});
}

/// DialogScreen arguments holder class
class DialogScreenArguments {
  final Key key;
  DialogScreenArguments({this.key});
}

/// ConsumerScreen arguments holder class
class ConsumerScreenArguments {
  final Key key;
  ConsumerScreenArguments({this.key});
}
