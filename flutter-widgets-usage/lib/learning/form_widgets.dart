import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key key}) : super(key: key);

  @override
  _FormScreenState createState() {
    return _FormScreenState();
  }
}

class _FormScreenState extends State<FormScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'), centerTitle: true,),
      body: Text('data'),
    );
  }
}