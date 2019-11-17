import 'dart:math';

// Challenge 1
// Write test cases for the given challenges

// Challenge 2
// Pandigital Numbers
// A pandigital number contains all digits (0-9) at least once. Write a function
// that takes an integer, returning true if the integer is pandigital, and false otherwise.
//  Examples
//  isPandigital(98140723568910) ➞ true

bool isPanDigital(int num){
  return num.toString().split('').toSet().length== 10;
}

// Challenge 3
// Area of Overlapping Rectangles
// Create a function that returns the area of the overlap between two rectangles.
// The function will receive two rectangles, each with the coordinates of two of
// its opposite angles.
//
// Examples
// overlappingRectangles(
//    [{ x: 2, y: 1 }, { x: 5, y: 5 }],
//    [{ x: 3, y: 2 }, { x: 5, y: 7 }]
//  ) ➞ 6




int overlappingRectangles(List<Map> Rec1, List<Map> Rec2){
  int rec1x1 = Rec1[0]['x'];
  int rec1y1 = Rec1[0]['y'];
  int rec1x2 = Rec1[1]['x'];
  int rec1y2 = Rec1[1]['y'];

  int rec2x1 = Rec2[0]['x'];
  int rec2y1 = Rec2[0]['y'];
  int rec2x2 = Rec2[1]['x'];
  int rec2y2 = Rec2[1]['y'];

  Point rec1point1 = Point(rec1x1, rec1y1);
  Point rec1point2 = Point(rec1x2, rec1y2);
  Point rec2point1 = Point(rec2x1, rec2y1);
  Point rec2point2 = Point(rec2x2, rec2y2);

  if (rec1point1.x > rec2point2.x || rec2point1.x > rec1point2.x) {
    return 0;
  }

  else if(rec1point1.y > rec2point2.y || rec2point1.y > rec1point2.y){
    return 0;
  }

  else {
    int area = (min(rec1y2, rec2y2) - max(rec1y1, rec2y1)) *
        (min(rec1x2, rec2x2) - max(rec1x1, rec2x1));
    return area;
  }
}

main() {
  print(isPanDigital(98140723568910));
  print(isPanDigital(76492728));

  print(overlappingRectangles([
    {'x': -1, 'y': -1},
    {'x': 1, 'y': 1}
  ], [
    {'x': 0, 'y': 0},
    {'x': 5, 'y': 5}
  ],
  ));

  print(overlappingRectangles([{'x': -1, 'y': -1 },{'x': -3, 'y': -4}], [{'x':-2, 'y': -3}, {'x': -5, 'y': -7}]));
}
