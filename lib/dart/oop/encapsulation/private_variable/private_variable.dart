class Student {

  // Private variable.
  // _ means private to this Dart library.
  String _name;

  int _age;


  // Constructor.
  Student(this._name, this._age);


  // Method to display the data.
  void displayInfo() {

    print("Name: $_name");
    print("Age: $_age");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Student object.
  Student student = Student(
    "A Patel",
    20,
  );


  // Access data through a method.
  student.displayInfo();
}