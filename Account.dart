import 'dart:io';

class Account {
  String accName;
  int accNum, accBalance;
  String accType;
  final maxBalance = 100000;
  var balanceAfterWithdraw;
  Account({
    required this.accName,
    required this.accNum,
    required this.accType,
    required this.accBalance,
  });
  withdraw() {
    print("Enter the amount to be withdrawn");
    int withdrawAmt = int.parse(stdin.readLineSync()!);
    if (withdrawAmt < accBalance && withdrawAmt < maxBalance) {
      balanceAfterWithdraw = accBalance - withdrawAmt;
    } else {
      print("Insufficient Balance!");
    }
  }

  deposit() {
    print("Enter the amount to be deposited");
    dynamic depositAmt = int.parse(stdin.readLineSync()!);
    if (depositAmt < maxBalance) {
      accBalance = depositAmt + balanceAfterWithdraw;
    } else {
      print("Deposit Amt greater than the max Capacity for your account");
    }
  }

  getAccDetails() {
    print("For $accName:");
    withdraw();
    deposit();
    print("Account Details:");
    print("Account Number : $accNum");
    print("Account Type : $accType");
    print("Account Balance : $accBalance");
  }
}

main() {
  Account Ram = Account(
      accName: "Ram Singh",
      accNum: 2356,
      accType: "Savings Account",
      accBalance: 67000);
  Account Shyam = Account(
      accName: "Shyam Bahadur",
      accNum: 1245,
      accType: "Checking Account",
      accBalance: 55000);
  Ram.getAccDetails();
  Shyam.getAccDetails();
}
