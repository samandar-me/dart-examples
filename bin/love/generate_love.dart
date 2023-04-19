import 'dart:io';
import 'dart:math';

void main() async {
  print("Enter boyName: ");
  var boyName = stdin.readLineSync();
  print("Enter girl name: ");
  var girlName = stdin.readLineSync();
  print("Calculating...");
  await Future.delayed(Duration(seconds: 2));
  generateLove(boyName!, girlName!);
}

void generateLove(String boyName, String girlName) {
  String text;
  var random = Random().nextInt(100) + 1;
  if (random >= 0 && random <= 20) {
    text = "😓 Awful :(";
  } else if (random >= 21 && random <= 50) {
    text = "💙 Good :)";
  } else if (random >= 51 && random <= 76) {
    text = "Awesome 💛";
  } else {
    text = "Woow, ❤️ Wonderful ;)";
  }
  print("$text $random%");
}
