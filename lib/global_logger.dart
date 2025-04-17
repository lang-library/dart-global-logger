import 'dart:io' as io;
import 'package:logger/logger.dart';

// This will show all logs even in release mode.
class _MyFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

// Output logs to stderr
class _MyeOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      io.stderr.writeln(line);
    }
  }
}

final $logger = Logger(filter: _MyFilter(), output: _MyeOutput());
