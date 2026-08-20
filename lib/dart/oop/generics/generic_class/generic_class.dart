// =====================================================
// Generic Class
// =====================================================

class Box<T> {

  // T represents the data type.
  T value;


  // Constructor.
  Box(this.value);


  // Method.
  void display() {

    print("Value: $value");
    print("Type: ${T}");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // T becomes String.
  Box<String> nameBox = Box("A Patel");

  nameBox.display();


  print("");


  // T becomes int.
  Box<int> numberBox = Box(100);

  numberBox.display();


  print("");


  // T becomes double.
  Box<double> priceBox = Box(99.99);

  priceBox.display();
}