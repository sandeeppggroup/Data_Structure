// Future

// Future fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Data successfully fetched in 2 seconds';
// }

// void main() async {
//   print('data fetching.....');
//   final data = await fetchData();

//   print(data);
// }

// Stream

// Stream generateNumber(int max) async* {
//   for (int i = 1; i <= max; i++) {
//     yield i;
//     await Future.delayed(Duration(seconds: 1));
//   }
// }

// void main() async {
//   final streamNumber = generateNumber(10);

//   await for (var element in streamNumber) {
//     print(element);
//   }
// }

// import 'dart:async';

// void main() {
//   // Create a stream of integers
//   Stream<int> myStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

//   // Subscribe to the stream
//   myStream.listen((int value) {
//     print('Received: $value');
//   });

//   myStream.forEach((element) {
//     print(element);
//   });
//   print("sandeep");
// }

void performOperation(String data, Function callback) {
  print('Performing operation with data: $data');
  // Simulate some processing time
  Future.delayed(
    Duration(seconds: 2),
    () {
      callback();
    },
  );
  // Call the provided callback function
}

void main() {
  print('Start of program');

  performOperation('Sample data', () {
    print('Operation completed');
  });

  print('End of program');
}
