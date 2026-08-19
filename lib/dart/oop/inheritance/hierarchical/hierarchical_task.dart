// =====================================================
// Parent Class
// =====================================================

class Employee {

  // Parent method.
  void work() {

    print("Employee is working");
  }
}


// =====================================================
// Child 1 — Developer
// =====================================================

class Developer extends Employee {

  // Developer's own method.
  void code() {

    print("Developer is coding");
  }
}


// =====================================================
// Child 2 — Designer
// =====================================================

class Designer extends Employee {

  // Designer's own method.
  void design() {

    print("Designer is designing");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Developer Object
  // ===================================================

  Developer developer = Developer();

  // Inherited method.
  developer.work();

  // Developer's own method.
  developer.code();


  print("");


  // ===================================================
  // Designer Object
  // ===================================================

  Designer designer = Designer();

  // Inherited method.
  designer.work();

  // Designer's own method.
  designer.design();
}