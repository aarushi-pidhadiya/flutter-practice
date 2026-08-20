// =====================================================
// Stream take()
// =====================================================
//
// take() takes only the first specified number of
// Stream events.
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}

Future<void> main() async {

  // Take only first 3 values.

  Stream<int> firstThree = getNumbers().take(3);


  await for (int number in firstThree) {

    print(number);
  }
}