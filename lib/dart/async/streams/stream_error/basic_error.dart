// =====================================================
// Basic Stream Error
// =====================================================

Stream<int> getNumbers() async* {

  yield 10;
  yield 20;

  throw Exception("Something went wrong");

  // This won't execute.
  // yield 30;
}


Future<void> main() async {

  try {

    await for (int number in getNumbers()) {

      print("Number: $number");
    }

  } catch (error) {

    print("Error: $error");
  }
}