// =====================================================
// MULTIPLE AWAIT
// =====================================================
//
// We can use await multiple times inside an async
// function.
//
// =====================================================


Future<String> getName() async {

  return "A Patel";
}


Future<int> getAge() async {

  return 20;
}


Future<String> getCourse() async {

  return "Flutter";
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  // Wait for first Future.

  String name = await getName();


  // Wait for second Future.

  int age = await getAge();


  // Wait for third Future.

  String course = await getCourse();


  print("Name: $name");

  print("Age: $age");

  print("Course: $course");
}