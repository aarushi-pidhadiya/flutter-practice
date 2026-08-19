// =====================================================
// Interface 1 — Printer
// =====================================================

abstract class Printer {

  // Method that must be implemented.
  void printDocument();
}


// =====================================================
// Interface 2 — Scanner
// =====================================================

abstract class Scanner {

  // Method that must be implemented.
  void scanDocument();
}


// =====================================================
// Class Implementing Multiple Interfaces
// =====================================================

class AllInOnePrinter implements Printer, Scanner {

  // ===================================================
  // Implement Printer method
  // ===================================================

  @override
  void printDocument() {

    print("Printing document");
  }


  // ===================================================
  // Implement Scanner method
  // ===================================================

  @override
  void scanDocument() {

    print("Scanning document");
  }


  // ===================================================
  // Own Method
  // ===================================================

  void start() {

    print("Printer started");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create object.
  AllInOnePrinter printer = AllInOnePrinter();


  // Call own method.
  printer.start();


  // Call Printer interface method.
  printer.printDocument();


  // Call Scanner interface method.
  printer.scanDocument();
}