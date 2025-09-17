import 'BankAccount.dart';

main() {
  BankAccount phonePe = BankAccount(500);

  print(phonePe.balance);
  phonePe.deposit(200);
  phonePe.withDraw(1000);
  phonePe.withDraw(300);
  print(phonePe.balance);
}
