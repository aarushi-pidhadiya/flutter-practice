void main() {

  // Give all parameters.
  student("A Patel", 20, "Flutter");

  // Give only the required parameters course is optional.
  student("Rahul", 21);
}


// =====================================================
// Optional Positional Parameter
// =====================================================

// [] makes the parameter optional.
// name and age are required.
// course is optional.

void student(String name, int age, [String course = "Not selected"]) {

  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
}