import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app/learning/consumer_widget.dart';
import 'package:flutter_app/modules/home/home_screen.dart';
import 'package:flutter_app/modules/settings/setting_screen.dart';
import 'package:flutter_app/learning/change_notifier.dart';
import 'package:flutter_app/learning/menu_widget.dart';
import 'package:flutter_app/learning/form_widgets.dart';
import 'package:flutter_app/learning/bottom_navbar_widget.dart';
import 'package:flutter_app/learning/tabbar_widget.dart';
import 'package:flutter_app/learning/dialog_widget.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(path: '/home', page: HomeScreen),
    MaterialRoute(path: '/setting', page: SettingScreen),
    MaterialRoute(path: '/notifier', page: ChangeNotifierScreen),
    MaterialRoute(path: '/form', page: FormScreen),
    MaterialRoute(path: '/menu', page: MenuScreen),
    MaterialRoute(path: '/BottomNavBarScreen', page: BottomNavBarScreen),
    MaterialRoute(path: '/TabBarScreen', page: TabBarScreen),
    MaterialRoute(path: '/DialogScreen', page: DialogScreen),
    MaterialRoute(path: '/ConsumerScreen', page: ConsumerScreen),
  ],
)
class $Router {}