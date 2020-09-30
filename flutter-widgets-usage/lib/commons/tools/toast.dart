import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastUtil {
  static void show(String msg) {
    Fluttertoast.showToast(
        msg: "$msg",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    );
  }
}