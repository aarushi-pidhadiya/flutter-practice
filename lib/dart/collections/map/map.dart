void main() {

  // ===================================================
  // 1. Create a Map
  // ===================================================

  // Create a Map with String keys and String values.
  Map<String, String> student = {
    "name": "A Patel",
    "course": "Flutter",
    "city": "Rajkot",
  };

  // Print the complete Map.
  print(student);

  // ===================================================
  // 1. Create a Map with Different Value Types
  // ===================================================

  // Create a Map with String keys and String values.
  Map<String, dynamic> student1 = {
    "name": "A Patel",
    "age": 20,
    "marks": 85.5,
    "isStudent": true,
  };

  // Print the complete Map.
  print(student1);


  // ===================================================
  // 2. Access a Value
  // ===================================================

  // Access the value using its key.
  print(student["name"]);

  print(student["course"]);


  // ===================================================
  // 3. Add a New Value
  // ===================================================

  // Add a new key-value pair.
  student["college"] = "ABC College";

  print(student);


  // ===================================================
  // 4. Change a Value
  // ===================================================

  // Change the value of city.
  student["city"] = "Ahmedabad";

  print(student);


  // ===================================================
  // 5. Remove a Value
  // ===================================================

  // Remove the value using its key.
  student.remove("college");

  print(student);


  // ===================================================
  // 6. Check if Key Exists
  // ===================================================

  // Check whether the Map contains the key "name".
  print(student.containsKey("name"));


  // ===================================================
  // 7. Check if Value Exists
  // ===================================================

  // Check whether the Map contains the value "Flutter".
  print(student.containsValue("Flutter"));


  // ===================================================
  // 8. Get Map Length
  // ===================================================

  // Get the number of key-value pairs.
  print("Total: ${student.length}");


  // ===================================================
  // 9. Get All Keys
  // ===================================================

  // Print all keys.
  print(student.keys);


  // ===================================================
  // 10. Get All Values
  // ===================================================

  // Print all values.
  print(student.values);


  // ===================================================
  // 11. Loop Through a Map
  // ===================================================

  // Get each key from the Map.
  for (String key in student.keys) {

    // Print key and its value.
    print("$key: ${student[key]}");
  }
}