import 'dart:io';

void main() {
  String str1 = 'abcde';
  List<String> strList1 = str1.split('');

  String str2 = 'abced';

  String temp;
  int flag = 0;

  for (int i = 0; i < str1.length - 1; i++) {
    for (int j = i + 1; j < str1.length; j++) {
      temp = strList1[i];
      strList1[i] = strList1[j];
      strList1[j] = temp;

      String str1 = strList1.join('');

      if (str1 == str2) {
        print('true');
        flag++;
        break;
      } else {
        temp = strList1[i];
        strList1[i] = strList1[j];
        strList1[j] = temp;
      }
    }
  }
  if (flag == 0) {
    print('False');
  }
}

