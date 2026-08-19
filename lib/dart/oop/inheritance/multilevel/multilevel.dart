// =====================================================
// Level 1 — Parent
// =====================================================

class Animal {

  void eat() {

    print("Animal is eating");
  }
}


// =====================================================
// Level 2 — Child
// =====================================================

class Dog extends Animal {

  void bark() {

    print("Dog is barking");
  }
}


// =====================================================
// Level 3 — Grandchild
// =====================================================

class Puppy extends Dog {

  void play() {

    print("Puppy is playing");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  Puppy puppy = Puppy();


  // Inherited from Animal.
  puppy.eat();


  // Inherited from Dog.
  puppy.bark();


  // Puppy method.
  puppy.play();
}