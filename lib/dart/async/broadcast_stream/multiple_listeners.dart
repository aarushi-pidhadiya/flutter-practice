// =====================================================
// MULTIPLE LISTENERS
// File: multiple_listeners.dart
// =====================================================

import 'dart:async';


// =====================================================
// Create Broadcast Stream
// =====================================================

Stream<int> createStream() async* {

  for (int i = 1; i <= 5; i++) {

    await Future.delayed(
      Duration(seconds: 1),
    );

    yield i;
  }
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  Stream<int> stream =
  createStream().asBroadcastStream();


  // ===================================================
  // Listener 1
  // ===================================================

  stream.listen((number) {

    print("Listener 1 received: $number");
  });


  // ===================================================
  // Listener 2
  // ===================================================

  stream.listen((number) {

    print("Listener 2 received: $number");
  });


  // Keep program alive.

  await Future.delayed(
    Duration(seconds: 6),
  );
}