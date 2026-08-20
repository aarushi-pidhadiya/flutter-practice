// =====================================================
// Stream where()
// =====================================================
//
// where() filters Stream values.
//
// Only values that satisfy the condition are returned.
// =====================================================

Stream<int> getNumbers() async* {
  yield 1;
  yield 2;
  yield 3;
  yield 4;
  yield 5;
  yield 6;
  yield 7;
  yield 8;
}

Future<void> main() async {

  // Get only even numbers.

  Stream<int> evenNumbers = getNumbers().where(
        (number) => number % 2 == 0,
  );


  await for (int number in evenNumbers) {

    print(number);
  }
}