// =====================================================
// Parent Class
// =====================================================

class Animal {

  void sound() {

    print("Animal makes a sound");
  }
}


// =====================================================
// Child Class — Dog
// =====================================================

class Dog extends Animal {

  // Override parent's method.
  @override
  void sound() {

    print("Dog says: Woof!");
  }
}


// =====================================================
// Child Class — Cat
// =====================================================

class Cat extends Animal {

  // Override parent's method.
  @override
  void sound() {

    print("Cat says: Meow!");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  Dog dog = Dog();

  Cat cat = Cat();


  dog.sound();

  cat.sound();
}