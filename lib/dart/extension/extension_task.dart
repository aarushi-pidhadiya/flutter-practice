// =====================================================
// String Extension
// =====================================================

extension StringTools on String {

  // ===================================================
  // Method 1 — Reverse Text
  // ===================================================

  String reverseText() {

    // Convert String to list of characters,
    // reverse the list,
    // then join it back into a String.

    return split('').reversed.join('');
  }


  // ===================================================
  // Method 2 — Check Text Length
  // ===================================================

  bool isLongText() {

    // Return true if text has more than 5 characters.
    return length > 5;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create String.
  String name = "Flutter";


  // ===================================================
  // Reverse Text
  // ===================================================

  print("Original: $name");

  print("Reverse: ${name.reverseText()}");


  // ===================================================
  // Check Length
  // ===================================================

  print("Is long text: ${name.isLongText()}");
}