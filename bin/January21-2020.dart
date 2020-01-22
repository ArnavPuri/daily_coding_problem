// Given an array of integers, return a new array such that each element at
// index i of the new array is the product of all the numbers in the original
// array except the one at i.
// For example, if our input was [1, 2, 3, 4, 5], the expected output would be
// [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be
// [2, 3, 6]


List<int> productWithoutDivision(List<int> numbers) {
  List<int> result = List.from(numbers);
  for (int i = 0; i < numbers.length; i++) {
    List<int> temp = numbers.sublist(0, i);
    temp.addAll(numbers.sublist(i + 1));
    result[i] = productOfItems(temp);
  }
  return result;
}

List<int> specialProduct(List<int> numbers) {
  int productOfAll = productOfItems(numbers);
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = productOfAll ~/ numbers[i];
  }
  return numbers;
}

int productOfItems(List<int> numbers) => numbers.reduce((val, el) => val * el);
