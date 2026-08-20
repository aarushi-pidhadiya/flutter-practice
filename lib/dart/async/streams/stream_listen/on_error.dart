// =====================================================
// onError
// =====================================================
//
// onError handles errors produced by a Stream.
// =====================================================

Stream<int> getNumbers() async* {
  yield 10;
  yield 20;

  throw Exception("Something went wrong");
}

void main() {
  getNumbers().listen(
        (number) {
      print("Number: $number");
    },
    onError: (error) {
      print("Error received: $error");
    },
  );
}