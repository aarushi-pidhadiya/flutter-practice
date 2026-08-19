void main() {

  // ===================================================
  // TASK 1 — Calculate Total
  // ===================================================

  List<int> numbers = [10, 20, 30, 40, 50];

  int total = 0;

  for (int number in numbers) {
    total += number;
  }

  print("Total: $total");


  // ===================================================
  // TASK 2 — Find Numbers Greater Than 50
  // ===================================================

  List<int> values = [25, 60, 45, 80, 35, 90];

  for (int value in values) {

    if (value > 50) {
      print("Greater than 50: $value");
    }
  }


  // ===================================================
  // TASK 3 — Find Longest Name
  // ===================================================

  List<String> names = [
    "Raj",
    "Aarav",
    "Krishna",
    "Dev",
  ];

  String longest = names[0];

  for (String name in names) {

    if (name.length > longest.length) {
      longest = name;
    }
  }

  print("Longest name: $longest");
}