class Student {

  // Public variable
  String name = "A Patel";

  // Private variable
  String _password = "12345";


  void showData() {

    print(name);

    // Can access private variable
    // inside the same library.
    print(_password);
  }
}


void main() {

  Student student = Student();

  // Public variable
  print(student.name);

  // ❌ Don't directly access _password
  // from another library/file.
}