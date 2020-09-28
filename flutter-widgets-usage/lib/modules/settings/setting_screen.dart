import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('设置页'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blueAccent,
          )
        ],
      )
    );
  }
}
