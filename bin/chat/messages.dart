import 'dart:math';

List<String> messages = [
  "Hello",
  "Hi",
  "How are you?",
  "I am fine",
  "Thank you",
  "Yeah",
  "Woow",
  "What are you doing?",
  "I am working",
  "Studying",
  "Bye"
];
String randomMessage() {
  var random = Random().nextInt(messages.length);
  return messages[random];
}