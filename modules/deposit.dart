import 'dart:io';
import '../data/bank_data.dart';

void deposit() {
  stdout.write("Enter amount to deposit: ");
  String? amountInput = stdin.readLineSync();

  if (amountInput == null || double.tryParse(amountInput) == null) {
    print("Invalid amount! Please enter a valid number.");
    return;
  }

  double amount = double.parse(amountInput);
  if (amount <= 0) {
    print("Amount must be greater than zero.");
    return;
  }

  accountBalance += amount;
  transactionHistory.add("Deposited: \$${amount.toStringAsFixed(2)}");
  print("Successfully deposited \$${amount.toStringAsFixed(2)}.\nNew balance: \$${accountBalance.toStringAsFixed(2)}");
}