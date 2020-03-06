import 'package:logger/src/printers/simple_printer.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
  ),
);

void main() {
  Logger.level = Level.verbose;
  print(
      'Run with either `dart example/main.dart` or `dart --enable-asserts example/main.dart`.');
  demo();
}

void demo() {
  logger.d('Log message with 2 methods');

  loggerNoStack.i('Info message');

  loggerNoStack.w('Just a warning!');

  logger.e('Error! Something bad happened', 'Test Error');

  loggerNoStack.v({'key': 5, 'value': 'something'});

  loggerNoStack.wtf({'key': 5, 'value': 'something'});

  Logger(printer: SimplePrinter()..useColor = true).v('boom');
}
