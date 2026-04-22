void main()
{
  BankAccount account = BankAccount();

  account.balance = 1000.0;
  print('Account Balance: ${account.balance}');

  account.sendNotification('New transaction received');

}
//Task 1

class BankAccount with EmailNotification {
  double _balance = 0.0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Balance cannot be negative');
    }
  } 
}

mixin EmailNotification {
  void sendNotification(String message) {
    print('Sending email notification: $message');
  }
}
