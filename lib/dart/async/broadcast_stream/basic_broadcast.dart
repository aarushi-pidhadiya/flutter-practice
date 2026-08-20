// =====================================================
// BASIC BROADCAST STREAM
// File: basic_broadcast.dart
// =====================================================
//
// A normal Stream usually has one listener.
//
// A Broadcast Stream can have multiple listeners.
//
// =====================================================

Stream<int> getNumbers() async* {

  yield 10;
  yield 20;
  yield 30;
}


// =====================================================
// MAIN
// =====================================================

void main() {

  // Convert normal Stream to Broadcast Stream.

  Stream<int> broadcastStream =
  getNumbers().asBroadcastStream();


  // Listener 1

  broadcastStream.listen((number) {

    print("Listener 1: $number");
  });


  // Listener 2

  broadcastStream.listen((number) {

    print("Listener 2: $number");
  });
}