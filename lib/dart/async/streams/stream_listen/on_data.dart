// =====================================================
// onData
// =====================================================
//
// onData is another way to handle Stream data.
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 20;
  yield 30;
}

void main() {
  // getNumbers().listen(
  //   null,
  //   onData: (number) {
  //     print("Data received: $number");
  //   },
  // );
}