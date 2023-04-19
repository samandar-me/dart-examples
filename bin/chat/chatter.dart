import 'messages.dart';
import 'user.dart';

class Chatter {
  User user1;
  User user2;
  Chatter(this.user1, this.user2);

  void startChat() async {
    while(true) {
      if (user1.id == 0) {
        var message = randomMessage();
        print("${user1.nickName}: \n$message");
        await Future.delayed(const Duration(seconds: 2));
        if (message == "Bye") {
          break;
        }
      }
      if (user2.id == 1) {
        var message = randomMessage();
        print("           ${user2.nickName}:");
        print("           $message");
        await Future.delayed(const Duration(seconds: 2));
        if (message == "Bye") {
          break;
        }
      }
    }
  }
}