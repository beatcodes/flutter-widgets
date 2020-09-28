# flutter_app

Learning flutter widgets

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## auto-route 路由导航
https://pub.flutter-io.cn/packages/auto_route
四步搞定页面跳转
1. 引入依赖
dependencies:
  auto_route: [latest-version]
dev_dependencies:
  auto_route_generator: [latest-version]
  build_runner:

2. 新建一个$Router 类，注意$号是强制要写的。
@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(path: '/home', page: HomePage),
    MaterialRoute(page: Second),
    MaterialRoute(page: ThirdPage),
    MaterialRoute(path: '/welcome', page: Welcome)
  ]
)
class $Router {}

3. 执行 flutter packages pub run build_runner watch， 自动生成路由文件router.gr.dart，这个文件不要去改，是自动更新的。

4. 在入口MaterialApp ，builder 改用auto-router的ExtendedNavigator.builder
return MaterialApp(
      builder: ExtendedNavigator.builder(
        router: Router(),
        initialRoute: Routes.homePage
      )
    );

页面间跳转用 ExtendedNavigator：
ExtendedNavigator.of(context).push(Routes.welcome, arguments: new WelcomeArguments(name: 'mm'));
