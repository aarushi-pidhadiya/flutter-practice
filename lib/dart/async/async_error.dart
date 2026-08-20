// =====================================================
// ASYNC + AWAIT + TRY-CATCH
// =====================================================
//
// try-catch can handle errors from an awaited Future.
//
// =====================================================


Future<String> getData() {

  return Future.delayed(
    Duration(seconds: 1),
        () {

      throw Exception(
        "Failed to load data",
      );
    },
  );
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  try {

    // Wait for the Future.

    String data = await getData();


    print(data);

  } catch (error) {

    // Handle the error.

    print("Error: $error");
  }
}