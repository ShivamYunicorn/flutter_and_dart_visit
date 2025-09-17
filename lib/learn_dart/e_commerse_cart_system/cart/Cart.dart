import 'package:flutter_visit/learn_dart/e_commerse_cart_system/cart/CartItem.dart';

class Cart {
  List<CartItem> _items = [];
  double cartDiscount = 0;

  void addToCart(CartItem item) {
    _items.add(item);
  }

  void addCartDiscount(double discount) {
    cartDiscount = discount;
  }

  double getPayingAmount() {
    return  _items.fold(
      0,
          (sum, item) => sum + (item.getTotalDiscountedPrice()),
    );
  }

  void getCartDetail() {
    double totalCartAmount = _items.fold(
      0,
      (sum, item) => sum + (item.getTotalPrice()),
    );

    double finalAmount = _items.fold(
      0,
      (sum, item) => sum + (item.getTotalDiscountedPrice()),
    );

    print("");
    print("");
    print("Your Cart 🛒:");
    print("\nCart Items:");
    _items.forEach(
      (element) => print(
        "${element.product.name} : ${element.product.discountPercentage} x ${element.quantity} = ${element.getTotalDiscountedPrice()}",
      ),
    );
    print("------------------------------------");
    print("Total cart amount: $totalCartAmount");
    print("Final discounted amount: $finalAmount");
  }
}
