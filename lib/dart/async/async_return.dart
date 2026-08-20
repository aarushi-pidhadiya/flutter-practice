// =====================================================
// ASYNC FUNCTION WITH RETURN VALUE
// =====================================================
//
// An async function can return a value through Future.
//
// =====================================================


Future<int> calculate() async {

  int a = 10;

  int b = 20;


  return a + b;
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  int result = await calculate();


  print("Result: $result");
}