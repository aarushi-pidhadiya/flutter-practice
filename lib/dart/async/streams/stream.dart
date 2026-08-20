// =====================================================
// Basic Stream
// File: stream.dart
// =====================================================
//
// A Stream provides multiple values over time.
// =====================================================


Stream<int> getNumbers() async* {

  yield 1;

  yield 2;

  yield 3;

  yield 4;

  yield 5;
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Stream started");


  await for (int number in getNumbers()) {

    print("Number: $number");
  }


  print("Stream finished");
}