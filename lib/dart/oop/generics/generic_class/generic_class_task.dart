// =====================================================
// Generic Class
// =====================================================

// T is a type parameter.
//
// T can become:
// String
// int
// double
// bool
// etc.

class Box<T> {

  // T means the value can be any specified type.
  T value;


  // ===================================================
  // Constructor
  // ===================================================

  Box(this.value);


  // ===================================================
  // Method to Display Value
  // ===================================================

  void display() {

    print("Value: $value");
    print("Type: ${T}");
  }


  // ===================================================
  // Method to Change Value
  // ===================================================

  void updateValue(T newValue) {

    value = newValue;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // String Box
  // ===================================================

  Box<String> nameBox = Box<String>("A Patel");

  nameBox.display();


  print("");


  // Update String value.
  nameBox.updateValue("Flutter Developer");

  print("Updated Name: ${nameBox.value}");


  print("");


  // ===================================================
  // Integer Box
  // ===================================================

  Box<int> numberBox = Box<int>(100);

  numberBox.display();


  print("");


  // Update Integer value.
  numberBox.updateValue(200);

  print("Updated Number: ${numberBox.value}");


  print("");


  // ===================================================
  // Double Box
  // ===================================================

  Box<double> priceBox = Box<double>(99.99);

  priceBox.display();


  print("");


  // Update Double value.
  priceBox.updateValue(199.99);

  print("Updated Price: ${priceBox.value}");


  print("");


  // ===================================================
  // Boolean Box
  // ===================================================

  Box<bool> statusBox = Box<bool>(true);

  statusBox.display();
}