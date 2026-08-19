void main() {

  // ===================================================
  // 1. Basic Do-While Loop
  // ===================================================

  // Start the variable at 1.
  int i = 1;

  // The code inside do runs first.
  do {

    // Print the current value.
    print(i);

    // Increase i by 1.
    i++;

    // After running the code, check the condition.
  } while (i <= 5);


  // ===================================================
  // 2. Print Text Multiple Times
  // ===================================================

  int count = 1;

  do {

    // Print Flutter.
    print("Flutter");

    // Increase count by 1.
    count++;

  } while (count <= 5);


  // ===================================================
  // 3. Print Numbers from 1 to 10
  // ===================================================

  int number = 1;

  do {

    // Print the number.
    print(number);

    // Move to the next number.
    number++;

  } while (number <= 10);


  // ===================================================
  // 4. Print Even Numbers
  // ===================================================

  int evenNumber = 2;

  do {

    // Print the even number.
    print(evenNumber);

    // Increase by 2.
    evenNumber += 2;

  } while (evenNumber <= 10);


  // ===================================================
  // 5. Print Odd Numbers
  // ===================================================

  int oddNumber = 1;

  do {

    // Print the odd number.
    print(oddNumber);

    // Increase by 2.
    oddNumber += 2;

  } while (oddNumber <= 10);


  // ===================================================
  // 6. Reverse Do-While Loop
  // ===================================================

  int reverseNumber = 10;

  do {

    // Print the current number.
    print(reverseNumber);

    // Decrease by 1.
    reverseNumber--;

  } while (reverseNumber >= 5);


  // ===================================================
  // 7. Condition is False
  // ===================================================

  int value = 10;

  // Even though 10 is NOT less than 5,
  // the code inside do will run once.
  do {

    print("This runs once");

    value++;

  } while (value < 5);
}