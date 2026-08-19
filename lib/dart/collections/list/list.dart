void main() {

  // ===================================================
  // 1. Create a List
  // ===================================================

  // Create a list of names.
  List<String> names = [
    "Rahul",
    "Priya",
    "Amit",
    "Neha",
  ];

  // Print the complete list.
  print(names);


  // ===================================================
  // 2. Access List Items
  // ===================================================

  // List index starts from 0.

  print(names[0]); // Rahul
  print(names[1]); // Priya
  print(names[2]); // Amit


  // ===================================================
  // 3. Change an Item
  // ===================================================

  // Change the first item.
  names[0] = "Raj";

  print(names);


  // ===================================================
  // 4. Add an Item
  // ===================================================

  // Add a new name at the end.
  names.add("Karan");

  print(names);


  // ===================================================
  // 5. Add Multiple Items
  // ===================================================

  names.addAll([
    "Mehul",
    "Riya",
  ]);

  print(names);


  // ===================================================
  // 6. Remove an Item
  // ===================================================

  // Remove a specific value.
  names.remove("Amit");

  print(names);


  // ===================================================
  // 7. List Length
  // ===================================================

  // Get the number of items.
  print("Total names: ${names.length}");
}