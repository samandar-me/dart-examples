import 'chatter.dart';
import 'user.dart';

void main() {
  User user1 = User(0, 'Andy', 'Android', "34234324322");
  User user2 = User(1, 'Steve', 'Ios', "324324209809");

  Chatter chatter = Chatter(user1, user2);
  chatter.startChat();
}