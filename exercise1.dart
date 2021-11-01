import 'dart:io';

void main(){
  print("Whats your name? ");
  String? name = stdin.readLineSync();
  print("Hi $name, How are You?");
   print("how old are you? ");
  int age = int.parse(stdin.readLineSync()!);
  int yearsToHundrade = 100-age;
  print("Hello $name you are $yearsToHundrade year to be 100");
 }