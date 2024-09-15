import 'dart:io';

String name() {
  stdout.write('Please Enter Your Name: ');
  String nameValue = stdin.readLineSync()!;
  return nameValue;
}

int age() {
  stdout.write('Please Enter Your Age: ');
  String? ageNumber = stdin.readLineSync();

  if (ageNumber!.isNotEmpty) {
    int finalValue = int.parse(ageNumber);
    return finalValue;
  }
  return 0;
}

String address() {
  stdout.write('Please Enter Your Address: ');
  String addressValue = stdin.readLineSync()!;
  return addressValue;
}

Map<String, Object> person() {
  Map<String, Object> identity = {
    'name': name(),
    'age': age(),
    'address': address()
  };
  return identity;
}

main() {
  Map<String, Object> values = person();
  print(values['age'].runtimeType);
}
