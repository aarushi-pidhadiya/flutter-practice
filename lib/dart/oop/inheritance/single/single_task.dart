// =====================================================
// Parent Class
// =====================================================

class Vehicle {

  // Parent method.
  void start() {

    print("Vehicle is starting");
  }
}


// =====================================================
// Child Class
// =====================================================

class Car extends Vehicle {

  // Car's own method.
  void drive() {

    print("Car is driving");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Car object.
  Car car = Car();


  // Method inherited from Vehicle.
  car.start();


  // Car's own method.
  car.drive();
}