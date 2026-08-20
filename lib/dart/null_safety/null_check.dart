// =====================================================
// Null Check
// =====================================================

void main() {

  String? name = "A Patel";


  if (name != null) {

    print("Name: $name");

  } else {

    print("Name is null");
  }


  name = null;


  if (name != null) {

    print("Name: $name");

  } else {

    print("Name is null");
  }
}