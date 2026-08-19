// =====================================================
// Parent Class
// =====================================================

class Animal {

  // Parent method.
  void eat() {

    print("Animal is eating");
  }
}


// =====================================================
// Child Class
// =====================================================

class Dog extends Animal {

  // Child's own method.
  void bark() {

    print("Dog is barking");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Dog object.
  Dog dog = Dog();


  // Method inherited from Animal.
  dog.eat();


  // Dog's own method.
  dog.bark();
}