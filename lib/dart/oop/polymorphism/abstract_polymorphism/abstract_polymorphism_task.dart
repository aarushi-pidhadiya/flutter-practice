// =====================================================
// Abstract Parent Class
// =====================================================

abstract class Shape {

  // Abstract method.
  void area();
}


// =====================================================
// Child Class — Circle
// =====================================================

class Circle extends Shape {

  double radius;

  // Constructor.
  Circle(this.radius);


  // Implement area().
  @override
  void area() {

    double result = 3.14 * radius * radius;

    print("Circle Area: $result");
  }
}


// =====================================================
// Child Class — Rectangle
// =====================================================

class Rectangle extends Shape {

  double length;
  double width;

  // Constructor.
  Rectangle(this.length, this.width);


  // Implement area().
  @override
  void area() {

    double result = length * width;

    print("Rectangle Area: $result");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Parent reference → Circle object.
  Shape shape1 = Circle(5);


  // Parent reference → Rectangle object.
  Shape shape2 = Rectangle(10, 5);


  // Runtime polymorphism.
  shape1.area();

  shape2.area();
}