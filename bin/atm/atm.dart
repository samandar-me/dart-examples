import 'dart:io';

void atmBank() {
  int password = 1234;
  bool isGame = true;
  int count = 0;
  do {
    print("Enter your password: ");
    int userPass = int.parse(stdin.readLineSync()!);
    if (userPass == password) {
      print("Enter all sum: ");
      int allSum = int.parse(stdin.readLineSync()!);
      do {
        showMenu();
        int option = int.parse(stdin.readLineSync()!);
        switch (option) {
          case 1:
            print('You all money is $allSum');
            break;
          case 2: {
            print('How much money would you like to receive?');
            var money = int.parse(stdin.readLineSync()!);
            allSum -= money;
            print('Received $money');
          }
          break;
          case 3:
            {
              print('How much money would you like to deposit?');
              var money = int.parse(stdin.readLineSync()!);
              allSum += money;
              print("Added $money");
            }
            break;
          case 4: {
            print('Have a nice day!');
            isGame = false;
          }
          break;
          default:
            {
              print("Invalid option!");
            }
            break;
        }
      } while(isGame);
    } else {
      print("Incorrect password!, Try again");
      count++;
      if(count == 3) {
        print('You are entered incorrect password many times!, Please try later.');
        isGame = false;
      }
    }
  } while (isGame);
}

showMenu() {
  print("1. See all money");
  print("2. Withdraw money");
  print("3. Deposit money");
  print("4. Exit");
}
