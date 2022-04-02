import 'dart:io';

void main() {
  int reverse = 0;
  List<int> array = [];
  stdout.write("enter the size of array:");
  int n = int.parse(stdin.readLineSync()!);
  stdout.write("enter the elements of array:");
  for (int i = 0; i < n; ++i) {
    int? reverse = int.parse(stdin.readLineSync()!);
    array.add(reverse);
  }
  for (var i = 0; i < array.length / 2; i++) {
    reverse = array[i];
    array[i] = array[array.length - 1 - i];
    array[array.length - 1 - i] = reverse;
  }
  print("reverse num:");
  for (int i = 0; i < n; ++i) {
    print(array[i]);
  }
}
