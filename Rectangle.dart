import 'dart:io';

class Rectangle {
  int Length, Breadth;
  Rectangle({
    required this.Length,
    required this.Breadth,
  });
  areaOfRectangle() {
    num Area;
    Area = Length * Breadth;
    print("The area of rectangle is $Area");
  }

  perimeterOfRectangle() {
    num Perimeter;
    Perimeter = 2 * (Length + Breadth);
    print("The perimeter of rectangle is $Perimeter");
  }

  printFunction() {
    areaOfRectangle();
    perimeterOfRectangle();
  }
}

main() {
  int L, B;
  print("Input for the first shape:");
  print("enter the length of rectangle");
  L = int.parse(stdin.readLineSync()!);
  print("enter the breadth of rectangle");
  B = int.parse(stdin.readLineSync()!);
  Rectangle First = Rectangle(Length: L, Breadth: B);
  First.printFunction();
  print("Input for the second shape:");
  print("enter the length of rectangle");
  L = int.parse(stdin.readLineSync()!);
  print("enter the breadth of rectangle");
  B = int.parse(stdin.readLineSync()!);
  Rectangle Second = Rectangle(Length: L, Breadth: B);
  Second.printFunction();
}
