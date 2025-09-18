import 'dart:math';

main() async {
  print("Placing order...");
  await placeOrder();

  bool paymentProcess = Random().nextBool();
  if (paymentProcess) {
    await processPayment();
    print("Payment successful ✅\n");
  } else {
    print("Payment failed");
  }
  if (paymentProcess) {
    trackDelivery().listen(
      (event) => print("Delivery status: $event"),
      onDone: () => print("\n\nAll done ✅"),
    );
  }
}

Future<String> placeOrder() async {
  await Future.delayed(Duration(seconds: 2));
  return "Order Placed";
}

Future<String> processPayment() async {
  await Future.delayed(Duration(seconds: 3));
  return "Payment successful";
}

Stream<String> trackDelivery() async* {
  for (int steps = 1; steps <= 4; steps++) {
    await Future.delayed(Duration(seconds: 1));
    switch (steps) {
      case 1:
        yield "Packed";
        break;
      case 2:
        yield "Shipped";
        break;
      case 3:
        yield "Out for delivery";
        break;
      case 4:
        yield "Delivered 🚚";
        break;
    }
  }
}
