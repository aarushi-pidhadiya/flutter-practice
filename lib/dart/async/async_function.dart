// =====================================================
// ASYNC FUNCTION
// =====================================================
//
// async makes a function asynchronous.
// An async function returns a Future.
//
// =====================================================

Future<void> showMessage() async {

  print("Hello from async function");
}


// =====================================================
// MAIN
// =====================================================

void main() {

  showMessage();
}