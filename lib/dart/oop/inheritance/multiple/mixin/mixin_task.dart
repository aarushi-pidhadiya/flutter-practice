// =====================================================
// Mixin 1 — Fly
// =====================================================

mixin Fly {

  // Fly behavior.
  void fly() {

    print("Duck is flying");
  }
}


// =====================================================
// Mixin 2 — Swim
// =====================================================

mixin Swim {

  // Swim behavior.
  void swim() {

    print("Duck is swimming");
  }
}


// =====================================================
// Class Using Multiple Mixins
// =====================================================

class Duck with Fly, Swim {

  // ===================================================
  // Duck's Own Method
  // ===================================================

  void walk() {

    print("Duck is walking");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Duck object.
  Duck duck = Duck();


  // Duck's own method.
  duck.walk();


  // Method from Fly mixin.
  duck.fly();


  // Method from Swim mixin.
  duck.swim();
}