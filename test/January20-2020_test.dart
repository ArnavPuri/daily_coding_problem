
import 'package:test/test.dart';
import '../bin/January20-2020.dart';

void main(){
  test('Testing Challenge 1', (){
    expect(checkIfSumPresent([10, 15, 3, 7], 17), true);
    expect(checkIfSumPresent([10, 15, 3, 7], 10), true);
    expect(checkIfSumPresent([10, 15, 3, 7], 20), false);
  });
}

