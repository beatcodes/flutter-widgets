import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app/modules/home/home_screen.dart';
import 'package:flutter_app/modules/settings/setting_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(path: '/home', page: HomeScreen),
    MaterialRoute(path: '/setting', page: SettingScreen),
  ],
)
class $Router {}