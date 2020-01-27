import 'package:test/test.dart';
import '../bin/problem7-January26-2020.dart';

void main() {
  test('Problem 7 Test cases', () {
    expect(countEncodings('1'), 1);
    expect(countEncodings('0'), 0);
    expect(countEncodings('10'), 1);
    expect(countEncodings('100'), 0);
    expect(countEncodings('11'), 2);
    expect(countEncodings('111'), 3);
    expect(countEncodings('1221'), 5);
    expect(countEncodings('10101'), 1);
  });
}
