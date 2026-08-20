// =====================================================
// Sequential Futures
// =====================================================
//
// Futures are executed one after another using await.
//
// Flow:
//
// Future 1
//    ↓
// Future 2
//    ↓
// Future 3
//
// =====================================================


Future<String> getName() async {

  await Future.delayed(
    Duration(seconds: 1),
  );

  return "A Patel";
}


Future<int> getAge() async {

  await Future.delayed(
    Duration(seconds: 1),
  );

  return 20;
}


Future<String> getCourse() async {

  await Future.delayed(
    Duration(seconds: 1),
  );

  return "Flutter";
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Starting...");


  String name = await getName();

  print("Name: $name");


  int age = await getAge();

  print("Age: $age");


  String course = await getCourse();

  print("Course: $course");


  print("Finished");
}