void main() {

  // Call the arrow function.
  sayHello();

  // Call the function and store the result.
  int result = add(10, 20);

  print("Result: $result");

  // Call another arrow function.
  print(square(5));
}


// =====================================================
// Normal Function
// =====================================================

void sayHello() {
  print("Hello Flutter");
}


// =====================================================
// Arrow Function
// =====================================================

// Normal function:
//
// int add(int a, int b) {
//   return a + b;
// }

// Same function using arrow syntax:
int add(int a, int b) => a + b;


// =====================================================
// Another Arrow Function
// =====================================================

int square(int number) => number * number;