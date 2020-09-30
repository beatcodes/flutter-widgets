import 'dart:developer';

class Log {
  static void i (String msg, [String tag = '##KING']) {
    log(msg, name: tag);
  }
}