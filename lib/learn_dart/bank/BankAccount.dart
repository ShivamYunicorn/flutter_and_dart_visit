class BankAccount {
  double _balance = 0;

  BankAccount(double balance) : _balance = balance;

  void deposit(double amount) {
    _balance += amount;
    print(
      "Amount Rs.$amount deposited successfully. Total balance: Rs.$_balance \n",
    );
  }

  void withDraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print(
        "Rs.$amount withdraw successfully, remaining balance Rs.$_balance \n",
      );
    } else {
      print("No enough balance \n");
    }
  }

  double get balance => _balance;
}
