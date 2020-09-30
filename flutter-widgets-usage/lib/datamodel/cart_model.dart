import 'package:flutter/foundation.dart';

class CartModel extends ChangeNotifier {
  List<CartItem> _cartList;
  CartModel.initCartList(this._cartList);

  List<CartItem> get cartList => _cartList;

  CartModel() : this._cartList = [];

  void addCartItem(CartItem cartItem) {
    this._cartList?.add(cartItem);
    notifyListeners();
  }

  void removeCartItem(CartItem cartItem) {
    this._cartList?.removeWhere((element) {
      return element.name == cartItem.name;
    });
    notifyListeners();
  }
}

class CartItem {
  int _price;
  String _name;

  int get price => _price;
  String get name => _name;

  CartItem(this._price, this._name);

}