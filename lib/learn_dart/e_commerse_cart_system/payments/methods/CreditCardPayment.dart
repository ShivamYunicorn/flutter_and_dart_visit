import 'package:flutter_visit/learn_dart/e_commerse_cart_system/payments/PaymentMethod.dart';

class CreditCardPayment extends PaymentMethod {
  String cardNumber;
  String expiryDate;
  String cvv;

  CreditCardPayment(this.cardNumber, this.expiryDate, this.cvv);

  @override
  void pay(double amount) {
    if (cardNumber.length == 10 && expiryDate.isNotEmpty && cvv.length == 3) {
      print("");
      print("-------------------------------------------------------");
      print(
        "✅ Payment of $amount successful using card ${cardNumber.substring(6, 10)}",
      );
      print("-------------------------------------------------------");
      print("");
    } else {
      print("Invalid details");
    }
  }
}
