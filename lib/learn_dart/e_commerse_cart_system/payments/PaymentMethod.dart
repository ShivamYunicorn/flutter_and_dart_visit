abstract class PaymentMethod {
  void pay(double amount);
}

enum PaymentTypes {
  CARD,
  UPI
}