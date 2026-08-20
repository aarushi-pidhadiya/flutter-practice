// =====================================================
// StreamController addError()
// =====================================================

import 'dart:async';


void main() {

  final controller = StreamController<int>();


  controller.stream.listen(

        (number) {

      print("Number: $number");
    },

    onError: (error) {

      print("Error received: $error");
    },

    onDone: () {

      print("Stream completed.");
    },
  );


  controller.add(10);

  controller.add(20);


  controller.addError(
    Exception("Database error"),
  );


  controller.add(30);


  controller.close();
}