void main() {

  // ===================================================
  // 1. For-In with List
  // ===================================================

  // Create a list of fruits.
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
  ];

  // Take each fruit from the list one by one.
  for (String fruit in fruits) {

    // Print the current fruit.
    print(fruit);
  }


  // ===================================================
  // 2. For-In with Numbers
  // ===================================================

  // Create a list of numbers.
  List<int> numbers = [
    10,
    20,
    30,
    40,
    50,
  ];

  // Get each number one by one.
  for (int number in numbers) {

    print(number);
  }


  // ===================================================
  // 3. For-In with Set
  // ===================================================

  // Create a Set of skills.
  Set<String> skills = {
    "Dart",
    "Flutter",
    "Git",
  };

  // Get each skill one by one.
  for (String skill in skills) {

    print(skill);
  }


  // ===================================================
  // 4. For-In with Condition
  // ===================================================

  List<int> marks = [
    35,
    45,
    70,
    90,
    25,
  ];

  // Check every mark in the list.
  for (int mark in marks) {

    // Check if the mark is 40 or more.
    if (mark >= 40) {

      print("$mark → Pass");

    } else {

      print("$mark → Fail");
    }
  }


  // ===================================================
  // 5. For-In with Names
  // ===================================================

  List<String> students = [
    "Rahul",
    "Priya",
    "Amit",
    "Neha",
  ];

  // Print a message for every student.
  for (String student in students) {

    print("Hello $student");
  }
}