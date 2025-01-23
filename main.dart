import 'dart:io';
import 'modules/deposit.dart';
import 'modules/withdraw.dart';
import 'modules/balance_inquiry.dart';
import 'modules/account_statement.dart';

void main() {
  while (true) {
    print("\nWelcome to Dart Bank!\n");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Balance Inquiry");
    print("4. Account Statement");
    print("5. Exit\n");

    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    if (choice == null || int.tryParse(choice) == null) {
      print("Invalid input! Please enter a valid number.");
      continue;
    }
    try{int choiceInt = int.parse(choice);
    switch (choiceInt) {
      case 1:
        deposit();
        break;
      case 2:
        withdraw();
        break;
      case 3:
        balanceInquiry();
        break;
      case 4:
        accountStatement();
        break;
      case 5:
        print("Thank you for using Dart Bank. Goodbye!");
        exit(0);
      default:
        print("Invalid choice! Please select a valid option.");
    }}
    catch(e){
      print("Please input an valid number");
    }
    
  }
}


