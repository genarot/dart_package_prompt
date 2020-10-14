import 'package:prompter_gt/prompter_gt.dart';

void main() {
  final List<Option> options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f')
  ];

  final prompter = Prompter();
  String colorCode =
      prompter.askMultiple('Which is your favorite color?', options);

  bool answer = prompter.askBinary('Are you human?');

  print(colorCode);
  print(answer);
}
