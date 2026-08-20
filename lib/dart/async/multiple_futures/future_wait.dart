// =====================================================
// Future.wait()
// =====================================================
//
// Future.wait() waits for multiple Futures.
//
// The Futures can progress concurrently.
//
// =====================================================


Future<String> getName() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return "A Patel";
}


Future<int> getAge() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return 20;
}


Future<String> getCourse() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return "Flutter";
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Loading...");


  var results = await Future.wait([
    getName(),
    getAge(),
    getCourse(),
  ]);


  print("Name: ${results[0]}");

  print("Age: ${results[1]}");

  print("Course: ${results[2]}");


  print("All data loaded.");
}