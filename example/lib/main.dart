import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(colors: true),
);

final loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0, colors: true),
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    demo();
    return Material();
  }
}

void demo() {
  logger.d('Log message with 2 methods');

  loggerNoStack.i('Info message');

  loggerNoStack.w('Just a warning!');

  logger.e('Error! Something bad happened', 'Test Error');

  loggerNoStack.v({'key': 5, 'value': 'something'});

  loggerNoStack.wtf({'key': 5, 'value': 'something'}, 'Hello');

  loggerNoStack.v('boom', 'Sarbagya');
}
