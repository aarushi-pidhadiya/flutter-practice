// =====================================================
// BROADCAST STREAM - PRACTICAL TASK
// File: broadcast_stream_task.dart
// =====================================================
//
// Student Management System
//
// Imagine our Flutter app has:
//
// Listener 1 → Dashboard
// Listener 2 → Attendance Screen
// Listener 3 → Notification System
//
// All three need the same student updates.
//
// A Broadcast Stream is useful here.
//
// =====================================================

import 'dart:async';


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  // ===================================================
  // Create Broadcast Controller
  // ===================================================

  final controller =
  StreamController<String>.broadcast();


  // ===================================================
  // Listener 1 - Dashboard
  // ===================================================

  controller.stream.listen((student) {

    print(
      "Dashboard received: $student",
    );
  });


  // ===================================================
  // Listener 2 - Attendance
  // ===================================================

  controller.stream.listen((student) {

    print(
      "Attendance received: $student",
    );
  });


  // ===================================================
  // Listener 3 - Notification
  // ===================================================

  controller.stream.listen((student) {

    print(
      "Notification received: $student",
    );
  });


  // ===================================================
  // Send Student Updates
  // ===================================================

  controller.add("A Patel");

  controller.add("Rahul");

  controller.add("Jay");


  // Give listeners time to receive events.

  await Future.delayed(
    Duration(milliseconds: 100),
  );


  // ===================================================
  // Close Controller
  // ===================================================

  await controller.close();


  print("");

  print("Broadcast Stream completed.");
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// Normal Stream:
//
// Stream
//   ↓
// Listener
//
//
//
// Broadcast Stream:
//
//                 ┌→ Listener 1
// Stream ─────────┼→ Listener 2
//                 └→ Listener 3
//
//
//
// Create Broadcast Stream:
//
// stream.asBroadcastStream()
//
//
//
// Create Broadcast Controller:
//
// StreamController.broadcast()
//
// =====================================================