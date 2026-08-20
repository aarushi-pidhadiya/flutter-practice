// =====================================================
// onDone
// =====================================================
//
// onDone runs when the Stream has finished.
// =====================================================

Stream<String> getStudents() async* {
  yield "A Patel";
  yield "Rahul";
  yield "Jay";
}

void main() {
  getStudents().listen(
        (student) {
      print("Student: $student");
    },
    onDone: () {
      print("Stream completed.");
    },
  );
}