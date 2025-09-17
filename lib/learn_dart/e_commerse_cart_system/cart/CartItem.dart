import '../product/Product.dart';

class CartItem {
  final Product _product;
  final int _quantity;

  CartItem({required Product product, required int quantity})
    : _product = product,
      _quantity = quantity;

  double getTotalDiscountedPrice() {
    return _product.getDiscountedPrice() * _quantity;
  }

  double getTotalPrice() {
    return _product.price * _quantity;
  }

  // getters
  Product get product => _product;

  int get quantity => _quantity;
}
