// =====================================================
// Stream onError
// =====================================================

Stream<int> getNumbers() async* {

  yield 10;
  yield 20;

  throw Exception("Failed to get numbers");
}


void main() {

  getNumbers().listen(

        (number) {

      print("Number: $number");
    },

    onError: (error) {

      print("Stream Error: $error");
    },
  );
}