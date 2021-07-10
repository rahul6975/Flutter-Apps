import 'dart:io';

main(List<String> args) async {
  work1();
  String str = await work2();
  work3(str);
}

void work1() {
  print("work 1");
}

Future<String> work2() async {
  Duration duration = Duration(seconds: 3);
  await Future.delayed(duration);
  print("work 2");
  return "rahul";
}

void work3(String str) {
  print(str);
}
