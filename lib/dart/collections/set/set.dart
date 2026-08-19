void main() {

  // ===================================================
  // 1. Create a Set
  // ===================================================

  // Create a Set of names.
  Set<String> names = {
    "Rahul",
    "Priya",
    "Amit",
    "Neha",
  };

  // Print the Set.
  print(names);


  // ===================================================
  // 2. Duplicate Values
  // ===================================================

  // Duplicate values are automatically removed.
  Set<int> numbers = {
    10,
    20,
    10,
    30,
    20,
  };

  print(numbers);

  // Output:
  // {10, 20, 30}


  // ===================================================
  // 3. Add an Item
  // ===================================================

  // Add a new value.
  names.add("Karan");

  print(names);


  // ===================================================
  // 4. Add Multiple Items
  // ===================================================

  names.addAll({
    "Mehul",
    "Riya",
  });

  print(names);


  // ===================================================
  // 5. Remove an Item
  // ===================================================

  // Remove a specific value.
  names.remove("Amit");

  print(names);


  // ===================================================
  // 6. Check if an Item Exists
  // ===================================================

  // Check whether Rahul exists.
  print(names.contains("Rahul"));

  // Check whether John exists.
  print(names.contains("John"));


  // ===================================================
  // 7. Set Length
  // ===================================================

  // Get the number of unique values.
  print("Total names: ${names.length}");


  // ===================================================
  // 8. Loop Through a Set
  // ===================================================

  // Get each item from the Set.
  for (String name in names) {

    print(name);
  }
}