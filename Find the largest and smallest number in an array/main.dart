import 'dart:io';

import '../services/type_parse.dart';
import '../services/user_input.dart';

List<T> swapListElements<T>({
  required int leftIndex,
  required int rightIndex,
  required List<T> originalList,
}) {
  if (originalList.isEmpty) {
    throw Exception("Can't Swap, cus list is empty");
  }
  if (originalList.length < 2) {
    throw Exception("Can't Swap, list have only one element");
  }
  if (leftIndex == rightIndex) {
    throw Exception("Can't Swap, both position can't be same");
  }
  if (originalList.length - 1 < leftIndex || originalList.length - 1 < rightIndex) {
    throw Exception("Can't Swap, given index is not found in given array");
  }
  final T right = originalList[rightIndex];
  originalList[rightIndex] = originalList[leftIndex];
  originalList[leftIndex] = right;
  return originalList;
}

(int, int) sortArray(List<int> array) {
  final arr = array;
  List<int> finalArr = array;

  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        swapListElements<int>(
          leftIndex: i,
          rightIndex: j,
          originalList: finalArr,
        );
      }
    }
  }
  return (finalArr[0], finalArr[finalArr.length - 1]);
}

void main() {
  List<int> array = [];

  print("Enter length of array?");
  int? arrayLength = uersInput().toInt();

  if (arrayLength < 0) {
    print("ArrayLength can't be negative");
    exit(0);
  }

  if (arrayLength == 0) {
    print("Array is empty");
    exit(0);
  }

  for (int i = 0; i < arrayLength; i++) {
    print("Enter $i number");
    int? arrayElement = uersInput().toInt();
    array.add(arrayElement);
  }
  print('Array = $array');
  final (smallestNo, largestNo) = sortArray(array);
  print("Smallest no is ${smallestNo} and Largest no is ${largestNo}");
}
