import 'package:flutter/material.dart';
import 'package:flutter_app/commons/tools/log.dart';
import 'package:flutter_app/commons/tools/toast.dart';
import 'package:flutter_app/datamodel/cart_model.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'consumer_widget.dart';

class ChangeNotifierScreen extends StatefulWidget {
  ChangeNotifierScreen({Key key}) : super(key: key);

  @override
  _ChangeNotifierScreenState createState() {
    Log.i('createState');
    return _ChangeNotifierScreenState();
  }
}

class _ChangeNotifierScreenState extends State<ChangeNotifierScreen> {

  List<CartItem> _cartList;
  CartModel _cartModel;

  List<CartItem> loadCartListFromModel () {
    return _cartModel?.cartList;
  }

  List<Widget> getListItems() {
    List<CartItem> cartList = this.loadCartListFromModel();
    return cartList.map((item) {
      return ListTile(
        title: Text('商品名称: ${item.name}'),
        subtitle: Text('价格是: ${item.price}'),
      );
    }).toList();
  }

  void addCartItem(CartItem item) {
    setState(() {
      _cartModel.addCartItem(item);
    });
  }

  @override
  void initState() {
    Log.i('initState');
    super.initState();
    _cartList = <CartItem>[
      CartItem(29, '_name_a'),
      CartItem(28, '_name_b'),
      CartItem(15, '_name_c'),
    ];
    _cartModel = CartModel.initCartList(_cartList);
  }

  @override
  void dispose() {
    Log.i('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Log.i('build');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return _cartModel;
          }
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('测试ChangeNotifier'),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: getListItems(),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: ConsumerScreen(),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: FloatingActionButton(
                  heroTag: 'add',
                  onPressed: () {
                    this.addCartItem(CartItem(Random().nextInt(100), '苹果${Random().nextInt(10)}'));
                  },
                  tooltip: '修改CartModel,触发notifyListeners',
                  child: Icon(Icons.add),
                )
            )
          ],
        )
      ),
    );
  }
}