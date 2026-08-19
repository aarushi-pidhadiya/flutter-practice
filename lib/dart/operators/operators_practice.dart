// =====================================================
// Dart Operators Practice
// File: operators_practice.dart
// =====================================================

void main() {

  // ===================================================
  // Student Marks
  // ===================================================

  // Store marks of three subjects.
  int marks1 = 80;
  int marks2 = 75;
  int marks3 = 90;


  // ===================================================
  // 1. Addition
  // ===================================================

  // Add all three marks.
  int totalMarks = marks1 + marks2 + marks3;

  print("Total Marks: $totalMarks");


  // ===================================================
  // 2. Average
  // ===================================================

  // Calculate the average of three subjects.
  double average = totalMarks / 3;

  print("Average: $average");


  // ===================================================
  // 3. Comparison
  // ===================================================

  // Check whether total marks are greater than 200.
  bool isGreaterThan200 = totalMarks > 200;

  print("Total marks greater than 200: $isGreaterThan200");


  // ===================================================
  // 4. Equality
  // ===================================================

  // Check whether marks1 and marks2 are equal.
  bool areMarksEqual = marks1 == marks2;

  print("Are marks1 and marks2 equal: $areMarksEqual");


  // ===================================================
  // 5. Add Bonus Marks
  // ===================================================

  // Add 5 bonus marks to marks1 using +=.
  marks1 += 5;

  print("Marks1 after bonus: $marks1");


  // ===================================================
  // 6. Decrease Marks
  // ===================================================

  // Decrease marks3 by 10 using -=.
  marks3 -= 10;

  print("Marks3 after subtraction: $marks3");


  // ===================================================
  // 7. Increment
  // ===================================================

  // Create a variable for the number of subjects.
  int subjects = 3;

  // Increase the value by 1 using ++.
  subjects++;

  print("Subjects after increment: $subjects");


  // ===================================================
  // 8. Modulus
  // ===================================================

  // Find the remainder when total marks are divided by 2.
  int remainder = totalMarks % 2;

  print("Remainder: $remainder");
}