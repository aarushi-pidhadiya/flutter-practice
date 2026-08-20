// =====================================================
// Future.wait() with Error Handling
// =====================================================
//
// If one Future throws an error,
// Future.wait() can complete with an error.
//
// =====================================================


Future<String> getName() async {

  return "A Patel";
}


Future<String> getCourse() async {

  throw Exception(
    "Failed to load course",
  );
}


Future<int> getAge() async {

  return 20;
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  try {

    var results = await Future.wait([

      getName(),

      getCourse(),

      getAge(),
    ]);


    print(results);

  } catch (error) {

    print("Something went wrong.");

    print("Error: $error");
  }
}