import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/route/router.gr.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  List<Object> _widgetNavList ;

  @override
  void initState() {
    _widgetNavList = buildListItem();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Object> buildListItem () {
    return [
      {
        "title": "底部导航",
        "nav": Routes.settingScreen
      },
      {
        "title": "顶部导航",
        "nav": Routes.settingScreen
      }
    ];
  }

  Widget getListTile (int index) {
    Map tileMap = _widgetNavList?.elementAt(index);
    String title = tileMap['title'];
    String navPath = tileMap['nav'];
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.navigate_next),
      onTap: () {
        ExtendedNavigator.of(context).push(navPath);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: ListView.builder(
        itemCount: _widgetNavList?.length,
        itemBuilder: (BuildContext context, int index) {
          return getListTile(index);
        })
    );
  }
}