void main() {

  // ===================================================
  // 1. String
  // ===================================================

  // String is used to store text.
  String name = "Flutter";

  print(name);


  // ===================================================
  // 2. int
  // ===================================================

  // int is used to store whole numbers.
  int age = 20;

  print(age);


  // ===================================================
  // 3. double
  // ===================================================

  // double is used to store decimal numbers.
  double price = 99.99;

  print(price);


  // ===================================================
  // 4. num
  // ===================================================

  // num can store both integer and decimal numbers.
  num number1 = 10;
  num number2 = 10.5;

  print(number1);
  print(number2);


  // ===================================================
  // 5. bool
  // ===================================================

  // bool can contain only true or false.
  bool isStudent = true;

  print(isStudent);


  // ===================================================
  // 6. List
  // ===================================================

  // List stores multiple values in an ordered collection.
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
  ];

  print(fruits);


  // ===================================================
  // 7. Set
  // ===================================================

  // Set stores unique values.
  // Duplicate values are automatically removed.
  Set<String> colors = {
    "Red",
    "Blue",
    "Green",
  };

  print(colors);


  // ===================================================
  // 8. Map
  // ===================================================

  // Map stores data using key-value pairs.
  Map<String, dynamic> student = {
    "name": "A Patel",
    "age": 20,
    "course": "Flutter",
  };

  print(student);


  // ===================================================
  // 9. dynamic
  // ===================================================

  // dynamic allows the variable to contain different types.
  dynamic value = 100;

  print(value);

  value = "Flutter";

  print(value);


  // ===================================================
  // 10. Object
  // ===================================================

  // Object is the base type for Dart objects.
  Object data = "Hello";

  print(data);
}