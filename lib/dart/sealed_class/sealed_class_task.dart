// =====================================================
// Sealed Parent Class
// =====================================================

sealed class Payment {

  // Parent class.
}


// =====================================================
// Child Class - Success
// =====================================================

class PaymentSuccess extends Payment {

  final double amount;

  PaymentSuccess(this.amount);
}


// =====================================================
// Child Class - Failed
// =====================================================

class PaymentFailed extends Payment {

  final String reason;

  PaymentFailed(this.reason);
}


// =====================================================
// Child Class - Pending
// =====================================================

class PaymentPending extends Payment {

  final String message;

  PaymentPending(this.message);
}


// =====================================================
// Function to Handle Payment
// =====================================================

void checkPayment(Payment payment) {

  switch (payment) {

  // =================================================
  // Payment Success
  // =================================================

    case PaymentSuccess success:

      print("Payment Successful");
      print("Amount: ${success.amount}");

      break;


  // =================================================
  // Payment Failed
  // =================================================

    case PaymentFailed failed:

      print("Payment Failed");
      print("Reason: ${failed.reason}");

      break;


  // =================================================
  // Payment Pending
  // =================================================

    case PaymentPending pending:

      print("Payment Pending");
      print("Message: ${pending.message}");

      break;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Create Payment Objects
  // ===================================================

  Payment payment1 = PaymentSuccess(1500);

  Payment payment2 = PaymentFailed(
    "Insufficient balance",
  );

  Payment payment3 = PaymentPending(
    "Waiting for bank confirmation",
  );


  // ===================================================
  // Check Payments
  // ===================================================

  checkPayment(payment1);

  print("");

  checkPayment(payment2);

  print("");

  checkPayment(payment3);
}


// =====================================================
// SEALED CLASS RULES
// =====================================================
//
// 1. Use the 'sealed' keyword.
//
// 2. A sealed class cannot be directly instantiated.
//
// 3. It is used to create a restricted class hierarchy.
//
// 4. Direct subclasses must be known within the same
//    library.
//
// 5. Sealed classes work very well with switch.
//
// 6. Dart can check whether all subclasses are handled.
//
// 7. Sealed classes are useful for fixed states.
//
// Examples:
//
// Payment
//   ├── PaymentSuccess
//   ├── PaymentFailed
//   └── PaymentPending
//
// API Result
//   ├── Success
//   ├── Error
//   └── Loading
//
// =====================================================