// =====================================================
// Abstract Class
// =====================================================

abstract class Animal {

  // Abstract method.
  //
  // It has no body.
  // Child classes must implement it.
  void sound();


  // Normal method.
  void eat() {

    print("Animal is eating");
  }
}


// =====================================================
// Child Class
// =====================================================

class Dog extends Animal {

  // Implement abstract method.
  @override
  void sound() {

    print("Dog says: Woof!");
  }
}


// =====================================================
// Another Child Class
// =====================================================

class Cat extends Animal {

  // Implement abstract method.
  @override
  void sound() {

    print("Cat says: Meow!");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Dog object.
  Dog dog = Dog();

  dog.sound();
  dog.eat();


  print("");


  // Create Cat object.
  Cat cat = Cat();

  cat.sound();
  cat.eat();
}