import 'package:flutter/material.dart';

// Кількість товару
class AddCart {
  final int valueShop;

  const AddCart({
    required this.valueShop,
  });
}

// Додавання товару до списку з товарами
class Cart extends ChangeNotifier {
  List<CartItem> items = [];

  void addToCart(CartItem item) {
    items.add(item);
    notifyListeners();
  }
  void removeFromCart(CartItem item) {
    items.remove(item);
    notifyListeners();
  }
}

// Збереженя списку з товарами
class CartItem {
  String name;
  double price;
  int quantity;

  CartItem({required this.name, required this.price, required this.quantity});
}
