import 'dart:io';
import '../data/bank_data.dart';

void withdraw() {
  stdout.write("Enter amount to withdraw: ");
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

  if (amount > accountBalance) {
    print("Insufficient funds! Available balance: \$${accountBalance.toStringAsFixed(2)}");
    return;
  }

  accountBalance -= amount;
  transactionHistory.add("Withdrew: \$${amount.toStringAsFixed(2)}");
  print("Successfully withdrew \$${amount.toStringAsFixed(2)}.\nNew balance: \$${accountBalance.toStringAsFixed(2)}");
}