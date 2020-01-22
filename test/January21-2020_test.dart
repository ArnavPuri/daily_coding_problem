import 'package:test/test.dart';
import '../bin/January21-2020.dart';

void main() {
  test('Testing Challenge 1', () {
    expect(productWithoutDivision([1, 2, 3, 4, 5]), [120, 60, 40, 30, 24]);
    expect(productWithoutDivision([3, 2, 1]), [2, 3, 6]);
  });
}
