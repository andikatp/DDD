import 'dart:io' show Platform;

import 'package:ddd_raja/insfratucture/core/tag_printer.dart';
import 'package:logger/logger.dart';

Type typeOf<T>() => T;

class LoggerFactory {
  static Logger logger(String loggerName) {
    return Logger(
      printer: TagPrinter(
        HybridPrinter(
          PrettyPrinter(
            colors: Platform.isAndroid,
            methodCount: 30,
            dateTimeFormat: DateTimeFormat.dateAndTime,
          ),
          debug: SimplePrinter(colors: Platform.isAndroid),
          info: SimplePrinter(colors: Platform.isAndroid),
        ),
        loggerName,
      ),
    );
  }
}

extension LoggerExtension on Logger {
  void listCount(Iterable<dynamic> list) {
    i('${list.length} items returned');
  }
}
