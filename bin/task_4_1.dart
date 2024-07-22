import 'dart:io';

void main() {
  List<String> strings1 = ["flower", "flow", "flight"];
  List<String> strings2 = ["dog", "racecar", "car"];

  print('Choose a list to find the longest common prefix:');
  print('1. ["flower", "flow", "flight"]');
  print('2. ["dog", "racecar", "car"]');
  print('Enter 1 or 2: ');

  String? choice = stdin.readLineSync();
  List<String> selectedList;

  switch (choice) {
    case '1':
      selectedList = strings1;
      break;
    case '2':
      selectedList = strings2;
      break;
    default:
      print('Invalid choice.');
      return;
  }

  String prefix = longestCommonPrefix(selectedList);

  print(prefix.isEmpty
      ? 'There is no common prefix among the input strings.'
      : 'Longest common prefix: $prefix');
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return "";
  String prefix = strs[0];
  for (int i = 1; i < strs.length; i++) {
    while (strs[i].indexOf(prefix) != 0) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) {
        return "";
      }
    }
  }
  return prefix;
}
