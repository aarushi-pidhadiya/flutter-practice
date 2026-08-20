class BankAccount {

  // Private variable.
  double _balance = 1000;


  // ===================================================
  // Getter
  // ===================================================

  double get balance {

    return _balance;
  }

  //You can also write:
  // double get balance => _balance;
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create object.
  BankAccount account = BankAccount();


  // Access private data using getter.
  print("Balance: ${account.balance}");
}