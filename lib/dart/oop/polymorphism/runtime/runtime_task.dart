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
// Child Class — Developer
// =====================================================

class Developer extends Employee {

  // Override work().
  @override
  void work() {

    print("Developer is writing code");
  }
}


// =====================================================
// Child Class — Designer
// =====================================================

class Designer extends Employee {

  // Override work().
  @override
  void work() {

    print("Designer is creating designs");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Parent reference → Developer object.
  Employee employee1 = Developer();

  // Parent reference → Designer object.
  Employee employee2 = Designer();


  // Runtime decides which method to call.
  employee1.work();

  employee2.work();
}