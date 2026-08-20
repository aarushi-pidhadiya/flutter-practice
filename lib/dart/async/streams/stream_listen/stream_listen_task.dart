// Student Attendance Monitoring System
//
// We will practice:
//
// 1. listen()
// 2. onData
// 3. onError
// 4. onDone
// 5. pause()
// 6. resume()
// 7. cancel()
// =====================================================

import 'dart:async';


// =====================================================
// Attendance Stream
// =====================================================

Stream<int> attendanceStream() async* {
  for (int attendance = 70;
  attendance <= 100;
  attendance += 5) {

    await Future.delayed(
      Duration(milliseconds: 500),
    );

    yield attendance;
  }
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {
  late StreamSubscription<int> subscription;


  // ===================================================
  // Listen to Attendance Stream
  // ===================================================

  subscription = attendanceStream().listen(
        (attendance) {

      // onData

      print(
        "Attendance received: $attendance%",
      );


      // =================================================
      // Pause after 80%
      // =================================================

      if (attendance == 80) {

        print("Pausing Stream...");

        subscription.pause();


        // Resume after 2 seconds.

        Future.delayed(
          Duration(seconds: 2),
              () {

            print("Resuming Stream...");

            subscription.resume();
          },
        );
      }
    },


    // =================================================
    // Error Handler
    // =================================================

    onError: (error) {

      print("Stream Error: $error");
    },


    // =================================================
    // Completion Handler
    // =================================================

    onDone: () {

      print("Attendance Stream completed.");
    },
  );


  // ===================================================
  // Wait for Stream to finish.
  // ===================================================

  await subscription.asFuture<void>();


  print("Program finished.");
}