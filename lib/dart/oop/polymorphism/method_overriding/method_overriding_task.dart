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
// Child Class — Car
// =====================================================

class Car extends Vehicle {

  // Override start() method.
  @override
  void start() {

    print("Car is starting with a key");
  }
}


// =====================================================
// Child Class — Bike
// =====================================================

class Bike extends Vehicle {

  // Override start() method.
  @override
  void start() {

    print("Bike is starting with a button");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Car object.
  Car car = Car();

  // Call overridden method.
  car.start();


  // Create Bike object.
  Bike bike = Bike();

  // Call overridden method.
  bike.start();
}