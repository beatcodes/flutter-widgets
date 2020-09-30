import 'package:flutter/material.dart';
import 'package:flutter_app/datamodel/cart_model.dart';
import 'package:provider/provider.dart';

class ConsumerScreen extends StatelessWidget {
  ConsumerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartModel cartModel = Provider.of<CartModel>(context, listen: false);
    CartItem cartItem = cartModel.cartList.last;
    return Column(
      children: <Widget>[
        Consumer(builder: (BuildContext context, CartModel cartModel, Widget child) {
          return Text('${cartModel.cartList[cartModel.cartList.length - 1].name}');
        }),
        Opacity(
          opacity: 0.7,
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            decoration: BoxDecoration(
                color: Colors.yellow
            ),
            child: Text('使用Provider.of<CartModel>(context), 获取cartItem: name: ${cartItem.name} ,price: ${cartItem.price}'),
          ),
        )
      ],
    );
  }
}
