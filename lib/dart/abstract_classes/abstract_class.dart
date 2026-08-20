// =====================================================
// ABSTRACT CLASS
// =====================================================
//
// An abstract class cannot be instantiated directly.
//
// It can contain:
// - Normal methods
// - Abstract methods
// - Variables
// - Constructors
//
// =====================================================


// =====================================================
// Abstract Class
// =====================================================

abstract class Animal {

  String name;


  Animal(
      this.name,
      );


  // ===================================================
  // Abstract Method
  // ===================================================
  //
  // No body.
  //
  // Child classes MUST implement this method.
  // ===================================================

  void makeSound();


  // ===================================================
  // Normal Method
  // ===================================================

  void showName() {

    print(
      "Animal name: $name",
    );
  }
}


// =====================================================
// Dog Class
// =====================================================

class Dog extends Animal {

  Dog(
      String name,
      ) : super(name);


  // Implement abstract method.

  @override
  void makeSound() {

    print("Dog says: Woof!");
  }
}


// =====================================================
// Cat Class
// =====================================================

class Cat extends Animal {

  Cat(
      String name,
      ) : super(name);


  // Implement abstract method.

  @override
  void makeSound() {

    print("Cat says: Meow!");
  }
}


// =====================================================
// MAIN
// =====================================================

void main() {

  // ❌ Cannot do this:
  //
  // Animal animal = Animal("Animal");


  // ===================================================
  // Dog object
  // ===================================================

  Dog dog = Dog("Tommy");


  dog.showName();

  dog.makeSound();


  // ===================================================
  // Cat object
  // ===================================================

  Cat cat = Cat("Kitty");


  cat.showName();

  cat.makeSound();
}