// =====================================================
// BROADCAST STREAM CONTROLLER
// File: controller_broadcast.dart
// =====================================================
//
// StreamController.broadcast() allows multiple
// listeners to receive the same events.
//
// =====================================================

import 'dart:async';


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  // Create Broadcast StreamController.

  final controller =
  StreamController<int>.broadcast();


  // ===================================================
  // Listener 1
  // ===================================================

  controller.stream.listen((number) {

    print("Listener 1: $number");
  });


  // ===================================================
  // Listener 2
  // ===================================================

  controller.stream.listen((number) {

    print("Listener 2: $number");
  });


  // ===================================================
  // Add Events
  // ===================================================

  controller.add(100);

  controller.add(200);

  controller.add(300);


  // Give listeners time to receive events.

  await Future.delayed(
    Duration(milliseconds: 100),
  );


  // Close Controller.

  await controller.close();
}