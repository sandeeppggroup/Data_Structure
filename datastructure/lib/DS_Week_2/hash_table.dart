// void main() {
//   // Creating a HashMap
//   Map<String, int> studentGrades = {
//     'Alice': 90,
//     'Bob': 85,
//     'Charlie': 92,
//     'Dave': 88,
//   };

//   // Accessing values in the HashMap
//   print('Alice\'s grade: ${studentGrades['Alice']}');

//   // Modifying values in the HashMap
//   studentGrades['Bob'] = 90;
//   print('Bob\'s updated grade: ${studentGrades['Bob']}');

//   // Adding new entries to the HashMap
//   studentGrades['Eve'] = 95;

//   // Removing an entry from the HashMap
//   studentGrades.remove('Charlie');

//   // Iterating over the HashMap
//   studentGrades.forEach((student, grade) {
//     print('$student: $grade');
//   });
// }

void main() {
  Map<String, int> studentGrades = {
    'sandeep': 70,
    'Athira': 60,
    'Justin': 60,
  };

  print("sandeep's grade ${studentGrades['sandeep']}");

  studentGrades['Athira'] = 90;
  print("Athira's modified grade : ${studentGrades['Athira']}");

  studentGrades.remove('Athira');

  studentGrades.forEach((student, grade) {
    print("${student} : ${grade}");
  });
}
