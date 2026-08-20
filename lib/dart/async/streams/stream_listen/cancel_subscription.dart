// =====================================================
// Cancel Stream Subscription
// =====================================================
//
// listen() returns a StreamSubscription.
//
// We can cancel the subscription when we no longer
// want to receive Stream events.
// =====================================================

import 'dart:async';

Stream<int> getNumbers() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(
      Duration(seconds: 1),
    );

    yield i;
  }
}

Future<void> main() async {
  late StreamSubscription<int> subscription;

  subscription = getNumbers().listen(
        (number) async {
      print("Received: $number");

      // Cancel after receiving 3.
      if (number == 3) {
        print("Cancelling subscription...");

        await subscription.cancel();
      }
    },
  );

  // Give the Stream time to run.
  await Future.delayed(
    Duration(seconds: 5),
  );

  print("Program finished.");
}