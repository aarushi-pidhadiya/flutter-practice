// =====================================================
// Creating an Enum
// =====================================================

// Enum contains a fixed set of values.

enum Status {

  pending,
  approved,
  rejected,
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create an enum variable.
  Status status = Status.pending;


  // Print the value.
  print(status);


  // Change the value.
  status = Status.approved;

  print(status);


  status = Status.rejected;

  print(status);
}