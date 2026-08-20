// =====================================================
// ASYNC + AWAIT
// =====================================================
//
// await waits for a Future to complete.
//
// await must be used inside an async function.
//
// =====================================================


Future<String> getData() {

  return Future.delayed(
    Duration(seconds: 2),
        () {

      return "Data received";
    },
  );
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Start");


  // Wait for getData() to complete.

  String data = await getData();


  print(data);


  print("End");
}