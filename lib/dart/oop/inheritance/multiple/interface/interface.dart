// =====================================================
// Interface 1
// =====================================================

abstract class Camera {

  // Method that must be implemented.
  void takePhoto();
}


// =====================================================
// Interface 2
// =====================================================

abstract class Music {

  // Method that must be implemented.
  void playMusic();
}


// =====================================================
// Class Implementing Multiple Interfaces
// =====================================================

class SmartPhone implements Camera, Music {

  // Implement Camera method.
  @override
  void takePhoto() {

    print("Taking photo");
  }


  // Implement Music method.
  @override
  void playMusic() {

    print("Playing music");
  }


  // SmartPhone's own method.
  void call() {

    print("Calling...");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create object.
  SmartPhone phone = SmartPhone();


  // Own method.
  phone.call();


  // Camera interface method.
  phone.takePhoto();


  // Music interface method.
  phone.playMusic();
}