// =====================================================
// Abstract Class
// =====================================================

abstract class Shape {

  // Abstract method.
  //
  // Child classes must implement this method.
  void calculateArea();


  // Normal method.
  void displayShape() {

    print("This is a shape");
  }
}


// =====================================================
// Circle Class
// =====================================================

class Circle extends Shape {

  // Radius of circle.
  double radius;


  // Constructor.
  Circle(this.radius);


  // Implement abstract method.
  @override
  void calculateArea() {

    double area = 3.14 * radius * radius;

    print("Circle Area: $area");
  }
}


// =====================================================
// Rectangle Class
// =====================================================

class Rectangle extends Shape {

  // Properties.
  double length;
  double width;


  // Constructor.
  Rectangle(this.length, this.width);


  // Implement abstract method.
  @override
  void calculateArea() {

    double area = length * width;

    print("Rectangle Area: $area");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Circle Object
  // ===================================================

  Circle circle = Circle(5);

  circle.displayShape();

  circle.calculateArea();


  print("");


  // ===================================================
  // Rectangle Object
  // ===================================================

  Rectangle rectangle = Rectangle(10, 5);

  rectangle.displayShape();

  rectangle.calculateArea();
}