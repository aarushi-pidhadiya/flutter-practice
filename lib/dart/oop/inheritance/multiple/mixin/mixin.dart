// =====================================================
// Mixin 1
// =====================================================

mixin Camera {

  void takePhoto() {

    print("Taking photo");
  }
}


// =====================================================
// Mixin 2
// =====================================================

mixin Music {

  void playMusic() {

    print("Playing music");
  }
}


// =====================================================
// Class Using Multiple Mixins
// =====================================================

class SmartPhone with Camera, Music {

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


  // Method from Camera mixin.
  phone.takePhoto();


  // Method from Music mixin.
  phone.playMusic();
}