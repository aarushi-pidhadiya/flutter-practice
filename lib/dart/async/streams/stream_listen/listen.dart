// =====================================================
// Stream listen()
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 20;
  yield 30;
}

void main() {
  // listen() receives every Stream value.

  getNumbers().listen((number) {
    print("Received: $number");
  });
}