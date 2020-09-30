import 'package:flutter/material.dart';
import 'package:flutter_app/datamodel/cart_model.dart';
import 'package:provider/provider.dart';

class ConsumerScreen extends StatelessWidget {
  ConsumerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, CartModel cartModel, Widget child) {
      return Text('${cartModel.cartList[cartModel.cartList.length - 1].name}');
    });
  }
}
