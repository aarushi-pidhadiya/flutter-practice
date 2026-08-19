void main() {

  // ===================================================
  // 1. LIST
  // ===================================================

  // List stores multiple values.
  List<String> names = [
    "Rahul",
    "Priya",
    "Amit",
  ];

  // Access an item using index.
  print(names[0]);

  // Add an item.
  names.add("Neha");

  print(names);


  // ===================================================
  // 2. SET
  // ===================================================

  // Set stores unique values.
  Set<int> numbers = {
    10,
    20,
    10,
    30,
  };

  // Duplicate 10 is automatically removed.
  print(numbers);

  // Add a value.
  numbers.add(40);

  print(numbers);


  // ===================================================
  // 3. MAP
  // ===================================================

  // Map stores key-value pairs.
  Map<String, dynamic> student = {
    "name": "A Patel",
    "age": 20,
    "course": "Flutter",
  };

  // Access a value using its key.
  print(student["name"]);

  // Add a new key-value pair.
  student["city"] = "Rajkot";

  print(student);


  // ===================================================
  // 4. LOOP THROUGH LIST
  // ===================================================

  for (String name in names) {

    print("Student: $name");
  }


  // ===================================================
  // 5. LOOP THROUGH SET
  // ===================================================

  for (int number in numbers) {

    print("Number: $number");
  }


  // ===================================================
  // 6. LOOP THROUGH MAP
  // ===================================================

  student.forEach((key, value) {

    print("$key: $value");
  });
}