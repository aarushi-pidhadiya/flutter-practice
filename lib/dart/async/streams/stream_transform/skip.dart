// =====================================================
// Stream skip()
// =====================================================
//
// skip() skips the first specified number of events.
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}

Future<void> main() async {

  // Skip first 2 values.

  Stream<int> remaining = getNumbers().skip(2);


  await for (int number in remaining) {

    print(number);
  }
}