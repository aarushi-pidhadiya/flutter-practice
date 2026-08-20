// =====================================================
// Stream with try-catch
// =====================================================

Stream<String> getData() async* {

  yield "Loading...";

  throw Exception("Data loading failed");
}


Future<void> main() async {

  try {

    await for (String data in getData()) {

      print(data);
    }

  } catch (error) {

    print("Caught Error: $error");
  }
}