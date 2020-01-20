/// This problem was recently asked by Google.
// Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
// For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
// Bonus: Can you do this in one pass?
void main(){
  print(checkIfSumPresent([10, 15, 3, 7], 17));
  print(checkIfSumPresent([10, 15, 3, 7], 10));
  print(checkIfSumPresent([10, 15, 3, 7], 20));
}

bool checkIfSumPresent(List<int> numbers, int k){
  for(int i = 0; i< numbers.length; i++){
    for(int j = i+1; j < numbers.length; j++){
      if(numbers[i] + numbers[j] == k){
        return true;
      }
    }
  }
  return false;
}