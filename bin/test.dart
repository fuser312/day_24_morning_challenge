import 'main.dart';
import 'package:test/test.dart';

void main() {

  test("Test Case 1",(){
    expect(isPanDigital(98140723568910), true);
    expect(isPanDigital(451296), false);
  });

  test("Test Case 2",(){
    expect(overlappingRectangles( [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],
   [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);

  });




}