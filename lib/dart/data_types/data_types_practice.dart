void main() {

  // ===================================================
  // Student Information
  // ===================================================

  // String stores the student's name.
  String name = "A Patel";

  // int stores the student's age.
  int age = 20;

  // double stores the student's percentage.
  double percentage = 85.5;

  // bool stores whether the student is currently studying.
  bool isStudying = true;


  // ===================================================
  // Subjects
  // ===================================================

  // List stores multiple subjects in order.
  List<String> subjects = [
    "Dart",
    "Flutter",
    "Database",
  ];


  // ===================================================
  // Hobbies
  // ===================================================

  // Set stores unique hobbies.
  Set<String> hobbies = {
    "Coding",
    "Reading",
    "Music",
  };


  // ===================================================
  // Student Details
  // ===================================================

  // Map stores information using key and value.
  Map<String, dynamic> studentDetails = {
    "name": name,
    "age": age,
    "percentage": percentage,
    "isStudying": isStudying,
  };


  // ===================================================
  // Print Student Information
  // ===================================================

  print("Student Name: $name");
  print("Age: $age");
  print("Percentage: $percentage");
  print("Is Studying: $isStudying");

  print("Subjects: $subjects");
  print("Hobbies: $hobbies");

  print("Student Details: $studentDetails");
}