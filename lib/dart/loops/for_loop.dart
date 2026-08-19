void main() {

  // ===================================================
  // 1. Basic For Loop
  // ===================================================

  // A for loop is used to repeat code multiple times.

  // int i = 1
  // Starts the loop from 1.

  // i <= 5
  // The loop continues while i is less than or equal to 5.

  // i++
  // Increases i by 1 after every loop.
  for (int i = 1; i <= 5; i++) {

    // Prints the current value of i.
    print(i);
  }


  // ===================================================
  // 2. Print Text Multiple Times
  // ===================================================

  // This loop prints "Flutter" 5 times.
  for (int i = 1; i <= 5; i++) {

    print("Flutter");
  }


  // ===================================================
  // 3. Print Numbers from 1 to 10
  // ===================================================

  // Starts from 1 and stops at 10.
  for (int i = 1; i <= 10; i++) {

    print(i);
  }


  // ===================================================
  // 4. Print Even Numbers
  // ===================================================

  // Starts from 2 and increases by 2.
  // This prints even numbers.
  for (int i = 2; i <= 10; i += 2) {

    print(i);
  }


  // ===================================================
  // 5. Print Odd Numbers
  // ===================================================

  // Starts from 1 and increases by 2.
  // This prints odd numbers.
  for (int i = 1; i <= 10; i += 2) {

    print(i);
  }


  // ===================================================
  // 6. Reverse Loop
  // ===================================================

  // Starts from 10.
  // Continues while i is greater than or equal to 5.
  // Decreases i by 1 each time.
  for (int i = 10; i >= 5; i--) {

    print(i);
  }


  // ===================================================
  // 7. Print a Message with Number
  // ===================================================

  // The loop number can be used inside the message.
  for (int i = 1; i <= 5; i++) {

    print("Flutter Lesson $i");
  }


  // ===================================================
  // 8. Calculate Total
  // ===================================================

  // This variable stores the total.
  int total = 0;

  // Add numbers from 1 to 5.
  for (int i = 1; i <= 5; i++) {

    total = total + i;
  }

  // Print the final total.
  print("Total: $total");
}