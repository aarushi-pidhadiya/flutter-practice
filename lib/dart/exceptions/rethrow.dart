// =====================================================
// rethrow
// =====================================================

void calculate() {

  try {

    int result = 10 ~/ 0;

    print(result);

  } catch (error) {

    print("Error caught inside calculate().");

    // Send the same exception to the caller.
    rethrow;
  }
}


void main() {

  try {

    calculate();

  } catch (error) {

    print("Error caught in main().");

    print(error);
  }
}