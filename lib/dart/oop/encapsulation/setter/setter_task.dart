// =====================================================
// BankAccount Class
// =====================================================

class BankAccount {

  // ===================================================
  // Private Variable
  // ===================================================

  double _balance = 0;


  // ===================================================
  // Setter
  // ===================================================

  set balance(double value) {

    // Balance cannot be negative.
    if (value >= 0) {

      _balance = value;

    } else {

      print("Invalid balance");
    }
  }


  // ===================================================
  // Getter
  // ===================================================

  double get balance {

    return _balance;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create BankAccount object.
  BankAccount account = BankAccount();


  // ===================================================
  // Set balance using setter
  // ===================================================

  account.balance = 1000;


  // Read balance using getter.
  print("Balance: ${account.balance}");


  // ===================================================
  // Try setting negative balance
  // ===================================================

  account.balance = -500;


  // Check balance.
  print("Final Balance: ${account.balance}");
}