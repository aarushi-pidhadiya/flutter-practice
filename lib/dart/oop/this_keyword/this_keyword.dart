// =====================================================
// Example 1 — Using this with Constructor
// =====================================================

class Student {

  // Properties.
  String name;
  int age;


  // Constructor.
  //
  // this.name means:
  // "name property of the current object"
  //
  // this.age means:
  // "age property of the current object"
  Student(this.name, this.age);


  // Method.
  void displayInfo() {

    print("Name: $name");
    print("Age: $age");
  }
}


// =====================================================
// Example 2 — Same Name
// =====================================================

class Car {

  // Properties.
  String brand;
  String color;


  // Constructor.
  //
  // this.brand means:
  // "brand property of the current object"
  //
  // this.color means:
  // "color property of the current object"
  Car(this.brand, this.color);
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Example 1
  // ===================================================

  Student student = Student(
    "A Patel",
    20,
  );

  student.displayInfo();


  // ===================================================
  // Example 2
  // ===================================================

  Car car = Car(
    "BMW",
    "Black",
  );

  print("Brand: ${car.brand}");
  print("Color: ${car.color}");
}