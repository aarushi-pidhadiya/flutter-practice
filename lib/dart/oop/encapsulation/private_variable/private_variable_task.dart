class BankAccount {

  // ===================================================
  // Private Variables
  // ===================================================

  String _accountNumber;

  double _balance;


  // ===================================================
  // Constructor
  // ===================================================

  BankAccount(
      this._accountNumber,
      this._balance,
      );


  // ===================================================
  // Display Account Information
  // ===================================================

  void displayAccount() {

    print("Account Number: $_accountNumber");
    print("Balance: $_balance");
  }


  // ===================================================
  // Deposit Method
  // ===================================================

  void deposit(double amount) {

    // Check that the amount is greater than 0.
    if (amount > 0) {

      _balance += amount;

      print("Balance after deposit: $_balance");

    } else {

      print("Invalid deposit amount");
    }
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create BankAccount object.
  BankAccount account = BankAccount(
    "12345",
    1000.0,
  );


  // Display account information.
  account.displayAccount();


  // Deposit money.
  account.deposit(500);
}