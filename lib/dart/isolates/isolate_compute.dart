// compute() runs a function in another Isolate.
//
// It is useful for CPU-heavy calculations so that the
// Flutter UI does not become blocked.
//
// IMPORTANT:
// This file uses Flutter's compute(), so it must be run
// inside a Flutter project.
//
// =====================================================

import 'package:flutter/foundation.dart';


// =====================================================
// 1. BASIC SUM
// =====================================================
//
// calculateSum() receives an integer and returns the sum
// from 1 to that number.
// =====================================================

int calculateSum(int number) {

  int sum = 0;


  for (int i = 1; i <= number; i++) {

    sum += i;
  }


  return sum;
}


// =====================================================
// 2. FACTORIAL
// =====================================================
//
// Example:
//
// 5! = 5 × 4 × 3 × 2 × 1
//    = 120
// =====================================================

int calculateFactorial(int number) {

  int result = 1;


  for (int i = 1; i <= number; i++) {

    result *= i;
  }


  return result;
}


// =====================================================
// 3. FIND LARGEST NUMBER
// =====================================================

int findLargest(List<int> numbers) {

  int largest = numbers[0];


  for (int number in numbers) {

    if (number > largest) {

      largest = number;
    }
  }


  return largest;
}


// =====================================================
// 4. FIND SMALLEST NUMBER
// =====================================================

int findSmallest(List<int> numbers) {

  int smallest = numbers[0];


  for (int number in numbers) {

    if (number < smallest) {

      smallest = number;
    }
  }


  return smallest;
}


// =====================================================
// 5. CALCULATE AVERAGE
// =====================================================

double calculateAverage(List<int> numbers) {

  int total = 0;


  for (int number in numbers) {

    total += number;
  }


  return total / numbers.length;
}


// =====================================================
// 6. COUNT EVEN NUMBERS
// =====================================================

int countEvenNumbers(List<int> numbers) {

  int count = 0;


  for (int number in numbers) {

    if (number % 2 == 0) {

      count++;
    }
  }


  return count;
}


// =====================================================
// 7. COUNT ODD NUMBERS
// =====================================================

int countOddNumbers(List<int> numbers) {

  int count = 0;


  for (int number in numbers) {

    if (number % 2 != 0) {

      count++;
    }
  }


  return count;
}


// =====================================================
// 8. STUDENT MARKS CALCULATION
// =====================================================
//
// This function receives a List of marks.
//
// It calculates:
//
// Total
// Average
// Highest
// Lowest
// =====================================================

Map<String, dynamic> calculateStudentMarks(
    List<int> marks,
    ) {

  int total = 0;

  int highest = marks[0];

  int lowest = marks[0];


  for (int mark in marks) {

    total += mark;


    if (mark > highest) {

      highest = mark;
    }


    if (mark < lowest) {

      lowest = mark;
    }
  }


  double average =
      total / marks.length;


  return {

    "total": total,

    "average": average,

    "highest": highest,

    "lowest": lowest,
  };
}


// =====================================================
// 9. MAIN
// =====================================================

Future<void> main() async {

  print("================================");

  print("      COMPUTE() EXAMPLES");

  print("================================");


  // ===================================================
  // Example 1 - Sum
  // ===================================================

  print("");

  print("===== SUM =====");


  int sum = await compute(

    calculateSum,

    1000000,
  );


  print("Sum: $sum");


  // ===================================================
  // Example 2 - Factorial
  // ===================================================

  print("");

  print("===== FACTORIAL =====");


  int factorial = await compute(

    calculateFactorial,

    10,
  );


  print("Factorial: $factorial");


  // ===================================================
  // Example 3 - Largest
  // ===================================================

  print("");

  print("===== LARGEST =====");


  List<int> numbers = [

    10,

    45,

    23,

    89,

    67,

    91,

    34,
  ];


  int largest = await compute(

    findLargest,

    numbers,
  );


  print("Largest: $largest");


  // ===================================================
  // Example 4 - Smallest
  // ===================================================

  print("");

  print("===== SMALLEST =====");


  int smallest = await compute(

    findSmallest,

    numbers,
  );


  print("Smallest: $smallest");


  // ===================================================
  // Example 5 - Average
  // ===================================================

  print("");

  print("===== AVERAGE =====");


  double average = await compute(

    calculateAverage,

    numbers,
  );


  print("Average: $average");


  // ===================================================
  // Example 6 - Even Numbers
  // ===================================================

  print("");

  print("===== EVEN NUMBERS =====");


  int evenCount = await compute(

    countEvenNumbers,

    numbers,
  );


  print(
    "Even numbers count: $evenCount",
  );


  // ===================================================
  // Example 7 - Odd Numbers
  // ===================================================

  print("");

  print("===== ODD NUMBERS =====");


  int oddCount = await compute(

    countOddNumbers,

    numbers,
  );


  print(
    "Odd numbers count: $oddCount",
  );


  // ===================================================
  // Example 8 - Student Marks
  // ===================================================

  print("");

  print("===== STUDENT MARKS =====");


  List<int> studentMarks = [

    85,

    90,

    78,

    88,

    95,

    72,

    91,
  ];


  Map<String, dynamic> result =
  await compute(

    calculateStudentMarks,

    studentMarks,
  );


  print(
    "Total: ${result["total"]}",
  );


  print(
    "Average: ${result["average"]}",
  );


  print(
    "Highest: ${result["highest"]}",
  );


  print(
    "Lowest: ${result["lowest"]}",
  );


  // ===================================================
  // Completed
  // ===================================================

  print("");

  print("================================");

  print("All compute examples completed.");

  print("================================");
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// compute()
// → Runs a function in another Isolate.
//
// Syntax:
//
// await compute(
//   functionName,
//   input,
// );
//
// =====================================================
//
// Example:
//
// int result = await compute(
//   calculateSum,
//   1000000,
// );
//
// =====================================================
//
// FLOW:
//
// Main Isolate
//      │
//      │ compute()
//      ↓
// New Isolate
//      │
//      │ calculation
//      ↓
// Result
//      │
//      ↓
// Main Isolate
//
// =====================================================
//
// IMPORTANT RULE
//
// The function passed to compute() should be a
// top-level function.
//
// GOOD:
//
// int calculateSum(int number) {
//   return number;
// }
//
// compute(calculateSum, 100);
//
// =====================================================