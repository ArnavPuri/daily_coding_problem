// This problem was asked by Facebook.
//
//  Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the
// number of ways it can be decoded.
//
//  For example, the message '111' would give 3, since it could be decoded as
//  'aaa', 'ka', and 'ak'.
//
//  You can assume that the messages are decodable. For example, '001' is not allowed.

int countEncodings(encodedString) {
  int count = 0;
  if (encodedString.length == 1) {
    return isValidEncoding(encodedString) ? 1 : 0;
  }
  if (isValidEncoding(encodedString[0])) {
    count = countEncodings(encodedString.substring(1));
  } else {
    return 0;
  }
  if (encodedString.length > 2) {
    if (isValidEncoding(encodedString.substring(0, 2))) {
      count = count + countEncodings(encodedString.substring(2));
    }
  } else {
    if (isValidEncoding(encodedString)) {
      return count + 1;
    }
  }
  return count;
}

bool isValidEncoding(String stringElement) {
  int element = int.parse(stringElement);
  return element >= 1 && element <= 26;
}
