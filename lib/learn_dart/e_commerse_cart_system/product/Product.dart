class Product {
  int _id;
  String _name;
  double _price;
  int _discountPercentage;

  Product({
    required int id,
    required String name,
    required double price,
    required int discountPercentage,
  }) : _id = id,
       _name = name,
       _price = price,
       _discountPercentage = discountPercentage;

  // Getters
  int get id => _id;

  String get name => _name;

  double get price => _price;

  int get discountPercentage => _discountPercentage;

  double getDiscountedPrice() {
    return _price - (_price * _discountPercentage / 100);
  }

  void printDetails() {
    print("Product: $_name | Price: $_price | Discount: $_discountPercentage%");
  }

}
