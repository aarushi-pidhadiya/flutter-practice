void main() {

  // ===================================================
  // 1. add()
  // ===================================================

  Set<String> names = {
    "Rahul",
    "Priya",
  };

  // Add one item.
  names.add("Amit");

  print(names);


  // ===================================================
  // 2. addAll()
  // ===================================================

  // Add multiple items.
  names.addAll({
    "Neha",
    "Karan",
  });

  print(names);


  // ===================================================
  // 3. remove()
  // ===================================================

  // Remove an item.
  names.remove("Amit");

  print(names);


  // ===================================================
  // 4. contains()
  // ===================================================

  // Check if an item exists.
  print(names.contains("Rahul"));


  // ===================================================
  // 5. containsAll()
  // ===================================================

  // Check if all items exist.
  print(
    names.containsAll([
      "Rahul",
      "Priya",
    ]),
  );


  // ===================================================
  // 6. length
  // ===================================================

  // Get number of items.
  print(names.length);


  // ===================================================
  // 7. isEmpty
  // ===================================================

  print(names.isEmpty);


  // ===================================================
  // 8. isNotEmpty
  // ===================================================

  print(names.isNotEmpty);


  // ===================================================
  // 9. clear()
  // ===================================================

  Set<int> numbers = {
    10,
    20,
    30,
  };

  // Remove everything.
  numbers.clear();

  print(numbers);


  // ===================================================
  // 10. forEach()
  // ===================================================

  Set<String> fruits = {
    "Apple",
    "Banana",
    "Mango",
  };

  // Loop through every item.
  fruits.forEach((fruit) {

    print(fruit);
  });


  // ===================================================
  // 11. where()
  // ===================================================

  Set<int> values = {
    10,
    15,
    20,
    25,
    30,
  };

  // Get values greater than 20.
  var result = values.where(
        (number) => number > 20,
  );

  print(result);


  // ===================================================
  // 12. union()
  // ===================================================

  Set<int> set1 = {
    1,
    2,
    3,
  };

  Set<int> set2 = {
    3,
    4,
    5,
  };

  // Combine both Sets.
  print(set1.union(set2));


  // ===================================================
  // 13. intersection()
  // ===================================================

  // Get values that exist in both Sets.
  print(set1.intersection(set2));


  // ===================================================
  // 14. difference()
  // ===================================================

  // Get values that exist in set1
  // but not in set2.
  print(set1.difference(set2));


  // ===================================================
  // 15. lookup()
  // ===================================================

  Set<String> colors = {
    "Red",
    "Green",
    "Blue",
  };

  // Find the matching value.
  print(colors.lookup("Green"));

  // If not found, returns null.
  print(colors.lookup("Yellow"));


  // ===================================================
  // 16. toList()
  // ===================================================

  // Convert Set to List.
  List<String> colorList = colors.toList();

  print(colorList);


  // ===================================================
  // 17. map()
  // ===================================================

  Set<int> numbers2 = {
    1,
    2,
    3,
  };

  // Create a new Set by changing every value.
  var doubled = numbers2.map(
        (number) => number * 2,
  );

  print(doubled);


  // ===================================================
  // 18. any()
  // ===================================================

  print(
    numbers2.any((number) => number > 2),
  );


  // ===================================================
  // 19. every()
  // ===================================================

  print(
    numbers2.every((number) => number > 0),
  );


  // ===================================================
  // 20. toString()
  // ===================================================

  print(colors.toString());
}