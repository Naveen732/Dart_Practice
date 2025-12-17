// Create a class called BankAccount.
// It should have a private instance variable _balance.
// Create a getter to read the balance.
// Create a setter for the balance that rejects negative numbers (prints an error if the user tries to set a negative value).

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double amount) {
    if (amount < 0) {
      print("Error: Balance cannot be negative.");
    } else {
      _balance = amount;
    }
  }
}
void main() {
  BankAccount account = BankAccount();

  account.balance = 100;
  print("Balance: \$${account.balance}");

  account.balance = -50;
  print("Balance: \$${account.balance}");
}