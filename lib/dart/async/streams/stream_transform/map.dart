// =====================================================
// Stream map()
// =====================================================
//
// map() transforms every value in a Stream.
// =====================================================

Stream<int> getNumbers() async* {
  yield 1;
  yield 2;
  yield 3;
  yield 4;
  yield 5;
}

Future<void> main() async {

  // Multiply every number by 2.

  Stream<int> doubled = getNumbers().map(
        (number) => number * 2,
  );


  await for (int number in doubled) {

    print(number);
  }
}