void main() {

  // ===================================================
  // 1. FOR LOOP
  // ===================================================

  // Print numbers from 1 to 5.
  for (int i = 1; i <= 5; i++) {
    print("For Loop: $i");
  }


  // ===================================================
  // 2. FOR LOOP - Reverse
  // ===================================================

  // Print numbers from 5 to 1.
  for (int i = 5; i >= 1; i--) {
    print("Reverse: $i");
  }


  // ===================================================
  // 3. FOR LOOP - Even Numbers
  // ===================================================

  // Print even numbers from 2 to 10.
  for (int i = 2; i <= 10; i += 2) {
    print("Even: $i");
  }


  // ===================================================
  // 4. WHILE LOOP
  // ===================================================

  // Start from 1.
  int number = 1;

  // Continue while number is 5 or less.
  while (number <= 5) {

    print("While Loop: $number");

    // Increase number by 1.
    number++;
  }


  // ===================================================
  // 5. WHILE LOOP - Reverse
  // ===================================================

  // Start from 5.
  int reverseNumber = 5;

  // Continue while number is 1 or more.
  while (reverseNumber >= 1) {

    print("While Reverse: $reverseNumber");

    // Decrease number by 1.
    reverseNumber--;
  }


  // ===================================================
  // 6. DO-WHILE LOOP
  // ===================================================

  // Start from 1.
  int count = 1;

  // The code inside do runs first.
  do {

    print("Do-While Loop: $count");

    // Increase count by 1.
    count++;

  } while (count <= 5);


  // ===================================================
  // 7. DO-WHILE - Condition False
  // ===================================================

  // Start with 10.
  int value = 10;

  // Even though the condition is false,
  // the code runs at least once.
  do {

    print("Do-While runs once");

    value++;

  } while (value < 5);


  // ===================================================
  // 8. FOR-IN LOOP
  // ===================================================

  // Create a list of Flutter topics.
  List<String> topics = [
    "Dart",
    "Flutter",
    "Widgets",
    "Layouts",
  ];

  // Get each topic from the list.
  for (String topic in topics) {

    print("Topic: $topic");
  }


  // ===================================================
  // 9. FOR-IN WITH IF
  // ===================================================

  // Create a list of marks.
  List<int> marks = [
    35,
    50,
    75,
    90,
    25,
  ];

  // Get each mark from the list.
  for (int mark in marks) {

    // Check whether the mark is 40 or more.
    if (mark >= 40) {

      print("$mark → Pass");

    } else {

      print("$mark → Fail");
    }
  }


  // ===================================================
  // 10. FOR-IN WITH STRINGS
  // ===================================================

  // Create a list of names.
  List<String> students = [
    "Rahul",
    "Priya",
    "Amit",
    "Neha",
  ];

  // Print a message for each student.
  for (String student in students) {

    print("Hello $student");
  }
}