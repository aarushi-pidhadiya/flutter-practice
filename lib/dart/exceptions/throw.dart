// =====================================================
// throw
// =====================================================

void checkAge(int age) {

  if (age < 18) {

    throw Exception("You must be 18 or older.");
  }

  print("You are eligible.");
}


void main() {

  try {

    checkAge(15);

  } catch (error) {

    print("Error: $error");
  }
}