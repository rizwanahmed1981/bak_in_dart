import '../data/bank_data.dart';

void accountStatement() {
  print("\nAccount Statement:");
  if (transactionHistory.isEmpty) {
    print("No transactions found.");
  } else {
    for (String transaction in transactionHistory) {
      print(transaction);
    }
  }
}