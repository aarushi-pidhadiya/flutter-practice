class Calculator {

  int add({
    required int a,
    required int b,
    int c = 0,
  }) {

    return a + b + c;
  }
}


void main() {

  Calculator calculator = Calculator();

  print(
    calculator.add(
      a: 10,
      b: 20,
    ),
  );

  print(
    calculator.add(
      a: 10,
      b: 20,
      c: 30,
    ),
  );
}