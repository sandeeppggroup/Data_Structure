class Example {
  late String lateInitializedString;

  void initializeString() {
    // lateInitializedString = "Sandeep Abraham";
  }

  void useString() {
    print(lateInitializedString); // Using the late-initialized variable
  }
}

void main() {
  var example = Example();
  example.initializeString();
  example.useString(); // Output: Sandeep Abraham
}
