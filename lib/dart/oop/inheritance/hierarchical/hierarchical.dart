// =====================================================
// Parent Class
// =====================================================

class Animal {

  void eat() {

    print("Animal is eating");
  }
}


// =====================================================
// Child 1
// =====================================================

class Dog extends Animal {

  void bark() {

    print("Dog is barking");
  }
}


// =====================================================
// Child 2
// =====================================================

class Cat extends Animal {

  void meow() {

    print("Cat is meowing");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Dog object.
  Dog dog = Dog();

  dog.eat();   // Inherited
  dog.bark();  // Own method


  print("");


  // Create Cat object.
  Cat cat = Cat();

  cat.eat();   // Inherited
  cat.meow();  // Own method
}