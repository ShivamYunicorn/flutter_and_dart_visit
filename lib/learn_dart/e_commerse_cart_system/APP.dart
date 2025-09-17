import 'package:flutter_visit/learn_dart/e_commerse_cart_system/cart/Cart.dart';
import 'package:flutter_visit/learn_dart/e_commerse_cart_system/cart/CartItem.dart';
import 'package:flutter_visit/learn_dart/e_commerse_cart_system/payments/PaymentMethod.dart';
import 'package:flutter_visit/learn_dart/e_commerse_cart_system/payments/methods/CreditCardPayment.dart';
import 'package:flutter_visit/learn_dart/e_commerse_cart_system/payments/methods/UpiPayment.dart';
import 'package:flutter_visit/learn_dart/e_commerse_cart_system/product/Product.dart';

main() {
  List<Product> products = [
    Product(id: 1, name: 'Shoes', price: 1200, discountPercentage: 10),
    Product(id: 2, name: 'Watch', price: 450, discountPercentage: 5),
    Product(id: 3, name: 'Bag', price: 300, discountPercentage: 12),
    Product(id: 4, name: 'Bottle', price: 80, discountPercentage: 0),
    Product(id: 5, name: 'Chair', price: 150, discountPercentage: 4),
  ];

  print(
    "\n--------------- Sort product by price: low to hight ---------------\n",
  );
  products.sort((a, b) => a.price.compareTo(b.price));

  printProducts(products);

  print("\n--------------- Filter Product by name : ---------------\n");
  var filterProductByName = products.where(
    (element) => element.name.toLowerCase().contains("b"),
  );

  printProducts(filterProductByName);

  // -------------- ADD TO CART -----------------
  Cart userCart = Cart();
  userCart.addToCart(CartItem(product: products[0], quantity: 1));
  userCart.addToCart(CartItem(product: products[2], quantity: 3));

  userCart.getCartDetail();

  // ------------- PAYMENT -----------------------

  var selectPaymentType = PaymentTypes.CARD;

  switch (selectPaymentType) {
    case PaymentTypes.CARD:
      {
        CreditCardPayment creditCardPayment = CreditCardPayment(
          "7832134567",
          "01/12/2030",
          "123",
        );

        creditCardPayment.pay(userCart.getPayingAmount());
      }
      break;

    case PaymentTypes.UPI:
      {
        UpiPayment upiPayment = UpiPayment("shivam@okicici");
        upiPayment.pay(userCart.getPayingAmount());
      }
      break;

    default:
      print("No Payment method selected");
      break;
  }
}

void printProducts(Iterable<Product> list) {
  list.forEach((element) => element.printDetails());
}
