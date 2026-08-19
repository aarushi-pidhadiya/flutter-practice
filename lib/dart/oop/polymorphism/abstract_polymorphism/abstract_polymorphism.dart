// =====================================================
// Abstract Parent Class
// =====================================================

abstract class Shape {

  void draw();
}


// =====================================================
// Child Class — Circle
// =====================================================

class Circle extends Shape {

  @override
  void draw() {

    print("Drawing Circle");
  }
}


// =====================================================
// Child Class — Rectangle
// =====================================================

class Rectangle extends Shape {

  @override
  void draw() {

    print("Drawing Rectangle");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Parent type → Circle object.
  Shape shape1 = Circle();

  // Parent type → Rectangle object.
  Shape shape2 = Rectangle();


  shape1.draw();

  shape2.draw();
}