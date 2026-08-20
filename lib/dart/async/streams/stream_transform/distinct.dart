// =====================================================
// Stream distinct()
// =====================================================
//
// distinct() removes consecutive duplicate values.
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 10;
  yield 20;
  yield 20;
  yield 30;
  yield 30;
  yield 40;
}

Future<void> main() async {

  Stream<int> uniqueNumbers = getNumbers().distinct();


  await for (int number in uniqueNumbers) {

    print(number);
  }
}