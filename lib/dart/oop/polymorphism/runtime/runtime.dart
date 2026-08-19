// =====================================================
// Parent Class
// =====================================================

class Animal {

  void sound() {

    print("Animal sound");
  }
}


// =====================================================
// Child Class — Dog
// =====================================================

class Dog extends Animal {

  @override
  void sound() {

    print("Woof!");
  }
}


// =====================================================
// Child Class — Cat
// =====================================================

class Cat extends Animal {

  @override
  void sound() {

    print("Meow!");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Parent reference → Dog object.
  Animal animal1 = Dog();

  // Parent reference → Cat object.
  Animal animal2 = Cat();


  // Dart calls the correct overridden method.
  animal1.sound();

  animal2.sound();
}