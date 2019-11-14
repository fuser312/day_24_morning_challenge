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
  if(num.toString().contains('0')&& num.toString().contains('1') && num.toString().contains('2')&& num.toString().contains('3')&& num.toString().contains('4')&& num.toString().contains('5')&& num.toString().contains('6')&& num.toString().contains('7')&& num.toString().contains('8')&& num.toString().contains('9')){
    return true;
  }
  else{
    return false;
  }
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

int overlappingRectangles(List<Map> RecordOne, List<Map> RecordTwo){
  int cord1 = RecordOne[0]['x'];
  int cord2 = RecordOne[0]['y'];
  int cord3 = RecordOne[1]['x'];
  int cord4 = RecordOne[1]['y'];

  int cord5 = RecordTwo[0]['x'];
  int cord6 = RecordTwo[0]['y'];
  int cord7 = RecordTwo[1]['x'];
  int cord8 = RecordTwo[1]['y'];


  int first = max(cord1, cord5);
  int second = min(cord3, cord7);
  int third = max(cord2, cord6);
  int fourth = min(cord4, cord8);

  int area = (fourth - third) * (second - first);


  return area;






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
