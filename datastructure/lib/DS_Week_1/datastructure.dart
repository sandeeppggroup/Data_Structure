// The code you provided compares two lists, a and b, and checks if they contain the same elements (regardless of the order).
// If they have the same elements, it prints "true"; otherwise, it prints "false".
void main() {

  List<dynamic> a = ['a', 'b', 'c','b'];
  List<dynamic> b = ['b', 'b', 'a','c'];
  int count = 0;
  int limit = a.length;
  int limit2 = b.length;
  if (a.length != b.length) {
    print("false");
  } else {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < b.length; j++) {
        if (a[i] == b[j]) {
          count++;
          b[j] = -1;
          break;
        }
      }
    }
    if (count == limit) {
      print("true");
    } else {
      print("false");
    }
  }
}
