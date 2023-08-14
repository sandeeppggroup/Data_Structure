void main() {
  // various way to  define String literals in Dart

  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'its\'s easy';
  String s4 = "its's easy";
  String s5 = 'This is going to be a very long Srting. This is just a sample '
      'demo int dart programming language';
  print(s5);

  //  String Interpolation : Use ["My name is $name"] instead of ["My name is " + name]

  String name = "Kevin";
  String message = "my name is $name";
  print(message);
  print("The number of charecter in String kevn - ${name.length}");

  int length = 20;
  int width = 10;

  print('The length is ${length} and widthe is ${width}');
  print('The sum of $length and $width is ${length + width}');
  print('The area of rectangle is  ${length * width} ');
}
