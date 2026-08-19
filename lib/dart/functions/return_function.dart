void main() {

  // Call the function and store its returned value.
  int result = addNumbers(10, 20);

  // Print the result.
  print("Result: $result");


  // Call the function again.
  int answer = multiplyNumbers(5, 4);

  // Print the returned value.
  print("Answer: $answer");
}


// =====================================================
// Function with Return
// =====================================================

// This function takes two integers and returns an integer.

int addNumbers(int a, int b) {

  // Calculate the sum.
  int result = a + b;

  // Send the result back.
  return result;
}


// =====================================================
// Another Function with Return
// =====================================================

int multiplyNumbers(int a, int b) {

  // Calculate multiplication.
  int result = a * b;

  // Return the result.
  return result;
}