// ignore_for_file: unused_element

import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  guessNumber();
}

void guessNumber() {
  int rand = Random().nextInt(300);
  print("Guess random number!!!!!");

  newMethod(rand);
}

void newMethod(int rand) {
  try {
    int? userInput = int.parse(stdin.readLineSync()!);
    

    if (userInput < rand) {
      print("Random number is higher");
      newMethod(rand);
    } else if (userInput > rand) {
      print("Random number is lower");
      newMethod(rand);
    } else {
      print("Congratulations!!");
    }
  } catch (e) {
    print("Invalid num");
    guessNumber();
  }
}
