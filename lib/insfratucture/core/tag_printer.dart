import 'package:logger/logger.dart';

class TagPrinter extends LogPrinter {
  TagPrinter(this._realPrinter, this._tag);
  final LogPrinter _realPrinter;
  final String _tag;

  @override
  List<String> log(LogEvent event) {
    final realLogs = _realPrinter.log(event);
    return realLogs.map((s) => '$_tag $s').toList();
  }
}
