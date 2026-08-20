// =====================================================
// Function Returning Future
// =====================================================

Future<String> getStudentName() {

  return Future.value("A Patel");
}


// =====================================================
// Main Function
// =====================================================

void main() {

  print("Program started");


  // Calling the Future.
  Future<String> result = getStudentName();


  print(result);


  print("Program finished");
}