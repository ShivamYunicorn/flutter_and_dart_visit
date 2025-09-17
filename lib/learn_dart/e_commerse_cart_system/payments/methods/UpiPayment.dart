import 'package:flutter_visit/learn_dart/e_commerse_cart_system/payments/PaymentMethod.dart';

class UpiPayment extends PaymentMethod {
  String upiId;

  UpiPayment(this.upiId);

  @override
  void pay(double amount) {
    if (true) {
      // assuming it is verified
      print("");
      print("---------------------------------------------------");
      print("✅ Payment of $amount successful using upi");
      print("----------------------------------------------------");
      print("");
    }
  }
}
