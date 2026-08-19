void main() {

  // ===================================================
  // TASK 1 — Find Common Values
  // ===================================================

  Set<int> set1 = {10, 20, 30, 40};

  Set<int> set2 = {30, 40, 50, 60};

  Set<int> common = set1.intersection(set2);

  print("Common: $common");


  // ===================================================
  // TASK 2 — Combine Two Sets
  // ===================================================

  Set<String> fruits1 = {
    "Apple",
    "Banana",
  };

  Set<String> fruits2 = {
    "Mango",
    "Banana",
    "Orange",
  };

  Set<String> allFruits = fruits1.union(fruits2);

  print("All fruits: $allFruits");


  // ===================================================
  // TASK 3 — Check Required Skills
  // ===================================================

  Set<String> skills = {
    "Dart",
    "Flutter",
    "Firebase",
    "Git",
  };

  bool result = skills.containsAll([
    "Dart",
    "Flutter",
  ]);

  print("Required skills available: $result");
}