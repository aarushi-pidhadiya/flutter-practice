// =====================================================
// Create a Class
// =====================================================

class Car {

  // Properties of the Car class.

  String brand = "";

  String color = "";
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Object 1
  // ===================================================

  // Create the first Car object.
  Car car1 = Car();

  // Give values to car1.
  car1.brand = "BMW";
  car1.color = "Black";


  // ===================================================
  // Object 2
  // ===================================================

  // Create the second Car object.
  Car car2 = Car();

  // Give values to car2.
  car2.brand = "Audi";
  car2.color = "White";


  // ===================================================
  // Object 3
  // ===================================================

  // Create the third Car object.
  Car car3 = Car();

  // Give values to car3.
  car3.brand = "Toyota";
  car3.color = "Red";


  // ===================================================
  // Print Objects
  // ===================================================
  //${} is called String Interpolation.
  
  print("Car 1: ${car1.brand}, ${car1.color}");

  print("Car 2: ${car2.brand}, ${car2.color}");

  print("Car 3: ${car3.brand}, ${car3.color}");
}