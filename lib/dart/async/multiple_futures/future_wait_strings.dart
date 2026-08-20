// =====================================================
// Future.wait() with Strings
// =====================================================
//
// All Futures return String.
//
// =====================================================


Future<String> getFirstName() async {

  return "A";
}


Future<String> getLastName() async {

  return "Patel";
}


Future<String> getCourse() async {

  return "Flutter";
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  List<String> results = await Future.wait([

    getFirstName(),

    getLastName(),

    getCourse(),
  ]);


  print("First Name: ${results[0]}");

  print("Last Name: ${results[1]}");

  print("Course: ${results[2]}");
}