void main() {

  // Store a day number.
  int day = 3;


  // ===================================================
  // Switch
  // ===================================================

  // switch checks the value of 'day'.
  switch (day) {

  // If day is 1, this code runs.
    case 1:
      print("Monday");
      break;

  // If day is 2, this code runs.
    case 2:
      print("Tuesday");
      break;

  // If day is 3, this code runs.
    case 3:
      print("Wednesday");
      break;

  // If day is 4, this code runs.
    case 4:
      print("Thursday");
      break;

  // If day is 5, this code runs.
    case 5:
      print("Friday");
      break;

  // If none of the cases match.
    default:
      print("Invalid day");
  }
}