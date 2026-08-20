// =====================================================
// Pause and Resume Stream Subscription
// =====================================================

import 'dart:async';

Stream<int> getNumbers() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(
      Duration(seconds: 1),
    );

    yield i;
  }
}

Future<void> main() async {
  late StreamSubscription<int> subscription;

  subscription = getNumbers().listen(
        (number) {
      print("Received: $number");
    },
  );

  // Wait for the first value.
  await Future.delayed(
    Duration(milliseconds: 1500),
  );

  print("Pausing Stream...");

  subscription.pause();


  // Keep Stream paused for 2 seconds.
  await Future.delayed(
    Duration(seconds: 2),
  );

  print("Resuming Stream...");

  subscription.resume();


  // Give Stream time to finish.
  await Future.delayed(
    Duration(seconds: 5),
  );

  await subscription.cancel();

  print("Program finished.");
}