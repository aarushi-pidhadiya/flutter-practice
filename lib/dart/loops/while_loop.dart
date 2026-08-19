void main() {

  // ===================================================
  // 1. Basic While Loop
  // ===================================================

  // Create a variable starting from 1.
  int i = 1;

  // The loop runs while i is less than or equal to 5.
  while (i <= 5) {

    // Print the current value.
    print(i);

    // Increase i by 1.
    // This is important so the loop can eventually stop.
    i++;
  }


  // ===================================================
  // 2. Print Text Multiple Times
  // ===================================================

  int count = 1;

  // Print Flutter 5 times.
  while (count <= 5) {

    print("Flutter");

    // Increase count by 1.
    count++;
  }


  // ===================================================
  // 3. Print Numbers from 1 to 10
  // ===================================================

  int number = 1;

  while (number <= 10) {

    print(number);

    // Move to the next number.
    number++;
  }


  // ===================================================
  // 4. Print Even Numbers
  // ===================================================

  int evenNumber = 2;

  while (evenNumber <= 10) {

    print(evenNumber);

    // Increase by 2 to get the next even number.
    evenNumber += 2;
  }


  // ===================================================
  // 5. Print Odd Numbers
  // ===================================================

  int oddNumber = 1;

  while (oddNumber <= 10) {

    print(oddNumber);

    // Increase by 2 to get the next odd number.
    oddNumber += 2;
  }


  // ===================================================
  // 6. Reverse While Loop
  // ===================================================

  int reverseNumber = 10;

  // Continue while the number is greater than or equal to 5.
  while (reverseNumber >= 5) {

    print(reverseNumber);

    // Decrease by 1.
    reverseNumber--;
  }


  // ===================================================
  // 7. Calculate Total
  // ===================================================

  int n = 1;
  int total = 0;

  // Add numbers from 1 to 5.
  while (n <= 5) {

    total = total + n;

    // Move to the next number.
    n++;
  }

  print("Total: $total");
}