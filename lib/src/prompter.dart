import 'option.dart';
import 'terminal.dart';
import 'terminal.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  dynamic askMultiple(String question, List<Option> options) {
    final input = _ask(question, options);
    try {
      return options[int.parse(input)].value;
    } catch (_) {
      return askMultiple(question, options);
    }
  }

  askBinary(String question) {
    final input = _ask('$question (y,n)', []);
    return input.contains('y');
  }

  String _ask(String question, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(question);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }
}
