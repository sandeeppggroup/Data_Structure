void main() {

  List<dynamic> a = ['a', 'b', 'c','b'];
  List<dynamic> b = ['b', 'b', 'a','c'];
  int count = 0;
  int limit = a.length;
  int secondlimit = b.length;
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
