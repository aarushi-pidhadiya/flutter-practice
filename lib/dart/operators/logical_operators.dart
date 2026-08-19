void main() {

  bool isStudent = true;
  bool isLearningFlutter = true;

  // AND (&&)
  // Returns true only when BOTH conditions are true.
  print(isStudent && isLearningFlutter); // true


  // OR (||)
  // Returns true when AT LEAST ONE condition is true.
  print(isStudent || false); // true


  // NOT (!)
  // Reverses the boolean value.
  print(!isStudent); // false
}