void main() {

  // Store student's marks.
  int marks = 85;

  // Check the first condition.
  if (marks >= 90) {

    // Runs when marks are 90 or more.
    print("Grade A");

  } else if (marks >= 75) {

    // Runs when marks are 75 to 89.
    print("Grade B");

  } else if (marks >= 50) {

    // Runs when marks are 50 to 74.
    print("Grade C");

  } else if (marks >= 40) {

    // Runs when marks are 40 to 49.
    print("Grade D");

  } else {

    // Runs when none of the above conditions are true.
    print("Fail");
  }
}