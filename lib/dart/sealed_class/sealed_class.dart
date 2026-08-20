// =====================================================
// Sealed Parent Class
// =====================================================

sealed class Result {

  // Empty parent class.
}


// =====================================================
// Child Class - Pass
// =====================================================

class Pass extends Result {

  final int marks;

  Pass(this.marks);
}


// =====================================================
// Child Class - Fail
// =====================================================

class Fail extends Result {

  final int marks;

  Fail(this.marks);
}


// =====================================================
// Child Class - Pending
// =====================================================

class Pending extends Result {

  final String message;

  Pending(this.message);
}


// =====================================================
// Function Using Sealed Class
// =====================================================

void showResult(Result result) {

  switch (result) {

    case Pass pass:

      print("Student Passed");
      print("Marks: ${pass.marks}");

      break;


    case Fail fail:

      print("Student Failed");
      print("Marks: ${fail.marks}");

      break;


    case Pending pending:

      print("Result Pending");
      print("Message: ${pending.message}");

      break;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  Result result1 = Pass(85);

  Result result2 = Fail(35);

  Result result3 = Pending(
    "Result will be announced soon",
  );


  showResult(result1);

  print("");

  showResult(result2);

  print("");

  showResult(result3);
}