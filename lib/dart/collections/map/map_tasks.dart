void main() {

  // ===================================================
  // TASK 1 — Calculate Total Price
  // ===================================================

  Map<String, double> products = {
    "Laptop": 50000,
    "Mouse": 1000,
    "Keyboard": 2000,
  };

  double total = 0;

  products.forEach((product, price) {

    total += price;
  });

  print("Total Price: ₹$total");


  // ===================================================
  // TASK 2 — Find Most Expensive Product
  // ===================================================

  String expensiveProduct = "";

  double highestPrice = 0;

  products.forEach((product, price) {

    if (price > highestPrice) {

      highestPrice = price;

      expensiveProduct = product;
    }
  });

  print("Most expensive: $expensiveProduct");
  print("Price: ₹$highestPrice");


  // ===================================================
  // TASK 3 — Count Colors
  // ===================================================

  List<String> colors = [
    "Red",
    "Blue",
    "Red",
    "Green",
    "Blue",
    "Red",
  ];

  Map<String, int> colorCount = {};

  for (String color in colors) {

    if (colorCount.containsKey(color)) {

      colorCount[color] = colorCount[color]! + 1;

    } else {

      colorCount[color] = 1;
    }
  }

  print("Color Count: $colorCount");
}