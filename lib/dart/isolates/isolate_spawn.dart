import 'dart:isolate';


// =====================================================
// Function executed by new Isolate
// =====================================================

void printMessage(String message) {

  print("Message from Isolate: $message");
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Main started.");


  await Isolate.spawn(
    printMessage,
    "Hello Dart!",
  );


  print("Isolate spawned.");


  // Give the Isolate time to execute.

  await Future.delayed(
    Duration(seconds: 1),
  );


  print("Main finished.");
}